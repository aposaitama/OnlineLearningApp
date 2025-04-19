import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StrapiApiService {
  final SharedPreferences prefs = locator<SharedPreferences>();
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
        )
        ..interceptors.addAll([
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
      await saveToken(token);

      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Register failed: $message';
    } catch (e) {
      throw 'Register failed';
    }
  }

  Future<String> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/auth/local',
        data: {'identifier': email, 'password': password},
      );

      final token = response.data['jwt'];
      await saveToken(token);
      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Login failed: $message';
    } catch (e) {
      throw 'Login failed';
    }
  }
}
