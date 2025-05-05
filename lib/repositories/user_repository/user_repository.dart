import 'package:dio/dio.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class UserRepository {
  static final UserRepository _instance = UserRepository._internal();

  factory UserRepository() => _instance;

  UserRepository._internal();

  final Dio _dio = StrapiApiService().dio;

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
}
