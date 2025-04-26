import 'package:dio/dio.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';

import '../../models/course_concrete_model.dart/course_concrete_model.dart';

class CourseItemsRepository {
  static final CourseItemsRepository _instance =
      CourseItemsRepository._internal();

  factory CourseItemsRepository() => _instance;

  CourseItemsRepository._internal();

  final Dio _dio = StrapiApiService().dio;

  Future<List<CourseConcreteModel>> filterCourses({
    required List<String> categories,
  }) async {
    try {
      final queryParameters = {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
      };

      for (int i = 0; i < categories.length; i++) {
        queryParameters['filters[\$or][$i][courseCategory][\$eq]'] =
            categories[i];
      }

      final response = await _dio.get(
        'course-items',
        queryParameters: queryParameters,
      );

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => CourseConcreteModel.fromJson(
                response.data['data'],
              ),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
