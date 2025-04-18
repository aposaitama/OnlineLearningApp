import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
      // await saveToken(token);

      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Login failed: $message';
    } catch (e) {
      throw 'Login failed';
    }
  }
}
