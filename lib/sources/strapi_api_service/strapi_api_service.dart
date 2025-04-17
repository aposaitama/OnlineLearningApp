import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/models/user_model/user_model.dart';

class StrapiApiService {
  final Dio _dio;

  StrapiApiService()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'http://localhost:1337/api',
          headers: {
            'Authorization': 'Bearer ${dotenv.env['STRAPI_SECRET_KEY']}',
            'Content-Type': 'application/json',
          },
        ),
      );
  //        {
  //   _dio.interceptors.add(PrettyDioLogger(
  //     error: true,
  //     compact: true,
  //     responseBody: false,
  //   ));
  // }

  Future<String> register(
    String userName,
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/local/register',
        data: {'username': userName, 'email': email, 'password': password},
      );
      final token = response.data['jwt'];
      // await saveToken(token);

      return token;
    } catch (e) {
      throw Exception('Failed to register');
    }
  }
}
