import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CategoryRepository {
  final Dio _dio;

  CategoryRepository()
      : _dio = Dio(
          BaseOptions(
            baseUrl: 'http://localhost:1337/api',
            headers: {
              'Authorization': 'Bearer ${dotenv.env['STRAPI_SECRET_KEY']}',
              'Content-Type': 'application/json',
            },
          ),
        )..interceptors.addAll(
            [
              PrettyDioLogger(
                requestHeader: true,
                requestBody: true,
                responseBody: true,
                responseHeader: false,
                error: true,
                compact: true,
                maxWidth: 90,
                enabled: kDebugMode,
              ),
              QueuedInterceptorsWrapper(
                onError: (exception, handler) {
                  return handler.next(exception);
                },
              ),
            ],
          );

  Future<List<CategoriesModel>> getCategories() async {
    try {
      const url =
          '/categories?populate[course_items][populate][courseImage]=true&populate[categoryImage]=true';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => CategoriesModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CategoriesModel>> fetchCategoriesItems() async {
    try {
      final response = await _dio.get('/categories', queryParameters: {
        'populate': 'categoryImage',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CategoriesModel.fromJson(json)).toList();
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Failed to load data: $message';
    } catch (e) {
      throw 'Failed to load data';
    }
  }
}
