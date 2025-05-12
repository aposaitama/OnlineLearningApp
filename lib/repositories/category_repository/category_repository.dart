import 'package:dio/dio.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/utils/extensions.dart';

import '../../di/service_locator.dart';

class CategoryRepository {
  final Dio _dio = locator<Dio>();

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
