import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:liqpay/liqpay.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class StrapiApiService {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio dio;

  StrapiApiService()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'http://localhost:1337/api',
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

  Future<String> register(
    String userName,
    String email,
    String password,
  ) async {
    try {
      final response = await dio.post(
        '/auth/local/register',
        data: {
          'username': userName,
          'email': email,
          'password': password,
        },
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

  // Future<bool> linkPhoneNumber(
  //   String phoneNumber,
  // ) async {
  //   try {
  //     final userData = await getUser();
  //     final response = await _dio.post(
  //       '/auth/local/register',
  //       data: {'username': userName, 'email': email, 'password': password},
  //     );
  //     final token = response.data['jwt'];
  //     await saveToken(token);

  //     return token;
  //   } on DioException catch (e) {
  //     final message = e.response?.data['error']['message'] ?? 'Unknown error';
  //     throw 'Register failed: $message';
  //   } catch (e) {
  //     throw 'Register failed';
  //   }
  // }

  Future<UserModel?> getUser() async {
    final token = await getToken();

    if (token == null) return null;

    try {
      final response = await dio.get(
        '/users/me',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {
          // 'populate': 'credit_cards',
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

  Future<String> login(String email, String password) async {
    try {
      final response = await dio.post(
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

  Future<List<CategoriesModel>> fetchCategoriesItems() async {
    try {
      final response = await dio.get('/categories', queryParameters: {
        'populate': 'categoryImage',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CategoriesModel.fromJson(json)).toList();
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

  Future<List<CourseBasicModel>> filterCourses({
    required List<String> categories,
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

  Future<bool> purchaseCourse(String courseID) async {
    try {
      final userModel = await getUser();
      final int userID = userModel?.id ?? 0;
      final response = await dio.put(
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

  Future<void> completeVideo(String videoID) async {
    try {
      final userModel = await getUser();
      final int userID = userModel?.id ?? 0;
      await dio.put(
        '/users/$userID',
        data: {
          'completed_course_videos': {
            "connect": [videoID]
          }
        },
      );
    } catch (e) {}
  }

  Future<bool> addToFavourite(String courseID) async {
    try {
      final userModel = await getUser();
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

  Future<void> addCreditCard(String cardNum, String expDate) async {
    try {
      final userModel = await getUser();
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

  Future<bool> removeFromFavourite(String courseID) async {
    try {
      final userModel = await getUser();
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

  Future<bool> buyCourse(
    String cardNum,
    String expMonth,
    String expYear,
    String cvv,
    String summ,
  ) async {
    try {
      final liqPay = LiqPay(
        dotenv.env['LIQPAY_PUBLIC_KEY']!,
        dotenv.env['LIQPAY_SECRET_KEY']!,
      );
      final card = LiqPayCard(cardNum, expMonth, expYear, cvv);
      final order = LiqPayOrder(
        const Uuid().v4(),
        1,
        'Test',
        card: card,
        action: LiqPayAction.pay,
      );
      final purchaseResult = await liqPay.purchase(order);
      if (purchaseResult.status == 'success') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
