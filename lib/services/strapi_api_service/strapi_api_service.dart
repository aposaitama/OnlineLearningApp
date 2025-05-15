import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StrapiApiService {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final userRepo = locator<UserRepository>();
  final Dio dio;

  StrapiApiService()
      : dio = Dio(
          BaseOptions(
            baseUrl: Platform.isAndroid
                ? 'http://10.0.2.2:1337/api'
                : 'http://localhost:1337/api',
            headers: {
              'Authorization': 'Bearer ${dotenv.env['STRAPI_SECRET_KEY']}',
              'Content-Type': 'application/json',
            },
          ),
        )..interceptors.addAll([
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
          ]);

  Future<void> saveToken(String token) async {
    await prefs.setString('jwt_token', token);
  }

  //delete token when logout
  Future<void> removeToken() async {
    await prefs.remove('jwt_token');
  }

  //get jwt-token
  Future<String?> getToken() async {
    return prefs.getString('jwt_token');
  }

  Future<List<CourseBasicModel>> filterCourses({
    required List<CategoriesModel> categories,
    String? searchedText,
  }) async {
    try {
      final queryParameters = {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
        if (categories.isNotEmpty) 'filters[courseCategory][\$in]': categories,
        if (searchedText != null)
          'filters[courseTitle][\$contains]': searchedText,
      };

      final response = await dio.get(
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

  Future<List<CourseBasicModel>> searchCoursesByText({
    String? enteredText,
  }) async {
    try {
      final queryParameters = {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
        if (enteredText != null)
          'filters[courseTitle][\$contains]': enteredText,
      };

      final response = await dio.get(
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
        throw Exception('Something went wrong during the search!');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> purchaseCourse({
    required int salesCount,
    required String courseDocId,
  }) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;

      final response = await dio.put(
        '/course-items/$courseDocId',
        data: {
          'data': {
            'salesCount': salesCount,
            'users': [userID],
          }
        },
      );

      // final response = await dio.put(
      //   '/users/$userID',
      //   data: {
      //     'user_purchased_courses': {
      //       "connect": [courseID]
      //     }
      //   },
      // );

      if (response.data != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<void> addCreditCard(String cardNum, String expDate) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;
      final response = await dio.post(
        '/credit-cards',
        data: {
          "data": {
            "cardNumber": cardNum,
            "expDate": expDate,
          }
        },
      );
      await dio.put('/users/$userID', data: {
        'credit_cards': {
          "connect": [response.data['data']['id']]
        }
      });
    } catch (e) {}
  }
}
