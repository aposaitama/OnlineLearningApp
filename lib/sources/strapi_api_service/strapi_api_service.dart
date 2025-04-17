import 'package:dio/dio.dart';

class StrapiApiService {
  final Dio dio;

  StrapiApiService()
    : dio = Dio(
        BaseOptions(
          baseUrl: 'http://localhost:1337/api',
          headers: {
            'Authorization':
                'Bearer ff51cf576794a6b826846d1a65b553d1efa6e934b1ebe875c83445a4f515f9b5b229b9f891a023a0aaa17b117a15b5c88fcdedf68b5280db65d24c3013ecd9f919f53e2a02e942dfc34c117bff294ca2a718f96c83e22e44fe1685e332ff10bafd8d4da41979d1ffa6cfb2ebb7e4e060112122ca64e0aca67f15bd6e0eb58368',
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
}
