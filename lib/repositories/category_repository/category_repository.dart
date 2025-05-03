import 'package:dio/dio.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';

class CategoryRepository {
  static final CategoryRepository _instance = CategoryRepository._internal();

  factory CategoryRepository() => _instance;

  CategoryRepository._internal();

  final Dio _dio = StrapiApiService().dio;

  Future<List<CategoriesModel>> getCategories() async {
    try {
      const url = '/categories?populate[course_items][populate][courseImage]=true&populate[categoryImage]=true';

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
}
