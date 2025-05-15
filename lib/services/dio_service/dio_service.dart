import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://learning.demodev.cc/api',
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

  return dio;
}
