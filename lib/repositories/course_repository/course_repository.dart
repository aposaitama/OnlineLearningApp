import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CourseRepository {
  final userRepo = locator<UserRepository>();
  final Dio dio;
  CourseRepository()
      : dio = Dio(
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

  Future<List<CourseBasicModel>> fetchCourseItems() async {
    try {
      final response = await dio.get('/course-items', queryParameters: {
        'populate': 'courseVideoItems.video',
        'populate[]': 'courseImage',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CourseBasicModel.fromJson(json)).toList();
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Failed to load data: $message';
    } catch (e) {
      throw 'Failed to load data';
    }
  }

  Future<CourseConcreteModel> fetchConcreteCourse(
    String documentID,
  ) async {
    try {
      final response = await dio.get(
        '/course-items/$documentID',
        queryParameters: {
          'populate': 'courseVideoItems.video',
          'populate[]': 'courseImage',
        },
      );

      return CourseConcreteModel.fromJson(
        response.data['data'],
      );
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Failed to load data: $message';
    } catch (e) {
      throw 'Failed to load data';
    }
  }

  Future<bool> removeFromFavourite(String courseID) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;
      await dio.put(
        '/users/$userID',
        data: {
          'favourite_items': {
            "disconnect": [courseID]
          }
        },
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> addToFavourite(String courseID) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;
      await dio.put(
        '/users/$userID',
        data: {
          'favourite_items': {
            "connect": [courseID]
          }
        },
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> completeVideo(String videoID) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;
      final response = await dio.put(
        '/users/$userID',
        data: {
          'completed_course_videos': {
            "connect": [videoID]
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
