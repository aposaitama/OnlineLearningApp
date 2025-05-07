import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class UserRepository {
  final Dio _dio;
  final authRepo = locator<AuthRepository>();
  UserRepository()
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

  Future<UserModel?> getUserData() async {
    final token = await StrapiApiService().getToken();

    if (token == null) return null;

    try {
      final response = await _dio.get(
        '/users/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {
          'populate': 'user_purchased_courses.courseImage',
          'populate[]': 'favourite_items',
          'populate[][]': 'user_purchased_courses.courseVideoItems.video',
          'populate[][][]': 'completed_course_videos.video',
          'populate[][][][]': 'creditCards',
        },
      );

      return UserModel.fromJson(
        response.data,
      );
    } catch (e) {
      return null;
    }
  }

  Future<bool> purchaseCourse(String courseID) async {
    try {
      final userModel = await getUserData();
      final int userID = userModel?.id ?? 0;
      final response = await _dio.put(
        '/users/$userID',
        data: {
          'user_purchased_courses': {
            "connect": [courseID]
          }
        },
      );
      if (response.data != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
