import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';

import '../../di/service_locator.dart';
import '../../sources/shared_preferences_service/shared_preferences_service.dart';

class CourseItemRepository {
  static final CourseItemRepository _instance =
      CourseItemRepository._internal();

  factory CourseItemRepository() => _instance;

  CourseItemRepository._internal();

  final Dio _dio = StrapiApiService().dio;
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService();

  Future<List<CourseBasicModel>> getFilteredCourses({
    required List<CategoriesModel> selectedCategories,
    required List<RangeValues> selectedDurations,
    required RangeValues price,
    String? enteredText,
    required int page,
    required int pageSize,
  }) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
        'filters[coursePrice][\$gte]': price.start.round(),
        'filters[coursePrice][\$lte]': price.end.round(),
        'pagination[page]': page,
        'pagination[pageSize]': pageSize,
      };

      if (enteredText != null) {
        queryParameters['filters[courseTitle][\$contains]'] = enteredText;
      }

      if (selectedCategories.isNotEmpty) {
        final List<int> categoriesId =
            selectedCategories.map((category) => category.id).toList();

        queryParameters['filters[category][id][\$in]'] = categoriesId;
      }

      if (selectedDurations.isNotEmpty) {
        final durationsIntSec = selectedDurations
            .map(
              (range) => RangeValues(range.start * 3600, range.end * 3600),
            )
            .toList();

        final List<Map<String, dynamic>> durationFilters = [];

        for (final range in durationsIntSec) {
          durationFilters.add({
            'totalCourseDurationInSeconds': {
              '\$gte': range.start.round(),
              '\$lte': range.end.round(),
            }
          });
        }

        queryParameters['filters[\$or]'] = durationFilters;
      }

      final response = await _dio.get(
        '/course-items',
        queryParameters: queryParameters,
      );

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => CourseBasicModel.fromJson(json),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<CourseBasicModel>> getFavourites() async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final url = '/course-items?filters[favourite_users]=$userId';

      final queryParameters = {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
      };

      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
      );

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => CourseBasicModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      throw Exception('Something went wrong during loading favourites: $e');
    }
  }


  Future<CourseBasicModel?> getCourseById({
    required String courseId,
  }) async {
    try {
      final url = '/course-items?filters[id]=$courseId&populate=courseImage';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        return CourseBasicModel.fromJson(
          response.data['data'][0],
        );
      } else {
        throw Exception('There is no such course!');
        return null;
      }
    } catch (e) {
      rethrow;

  Future<List<CourseBasicModel>> getCoursesOnCourseScreen({
    required String filter,
    required int page,
    required int pageSize,
  }) async {
    final queryParameters = {
      'populate': 'courseVideoItems.video',
      'populate[]': 'courseImage',
      'pagination[page]': page,
      'pagination[pageSize]': pageSize,
    };

    if (filter == 'New') {
      queryParameters['sort'] = 'publishedAt:desc';
    } else if (filter == 'Popular') {
      queryParameters['sort'] = 'salesCount:desc';
    }

    final response = await _dio.get(
      '/course-items',
      queryParameters: queryParameters,
    );

    if (response.isSuccess) {
      return (response.data['data'] as List)
          .map(
            (json) => CourseBasicModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
    } else{
      return [];

    }
  }

  Future<void> salesCountIncrease({
    required String courseDocId,
    required int salesCount,
  }) async {
    try {
      final url = '/course-items/$courseDocId';

      final body = {
        'data': {'salesCount': salesCount}
      };

      await _dio.put(
        url,
        data: body,
      );
    } catch (e) {
      throw Exception('Somehow we cant increase sales count');
    }
  }
}
