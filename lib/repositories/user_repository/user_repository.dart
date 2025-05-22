import 'package:dio/dio.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:online_app/utils/extensions.dart';

class UserRepository {
  final Dio _dio = locator<Dio>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<UserModel?> getUserData() async {
    final userId = await _sharedPreferencesService.getUserId();

    try {
      final response = await _dio.get(
        '/users/$userId',
        queryParameters: {
          'populate': {
            'user_purchased_courses': {
              'populate': {
                'courseImage': true,
                'courseVideoItems': {
                  'populate': {
                    'video': true,
                  },
                },
              },
            },
            'completed_course_videos': {
              'populate': {
                'video': true,
              },
            },
            'favourite_items': true,
            'creditCards': true,
            'message_notifications': true,
            'avatar': true,
          },
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

  Future<bool> updatePaymentPasswordAndPhoneNumber({
    required String phoneNumber,
    required String paymentPassword,
  }) async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final body = {
        'data': {
          'userPhoneNumber': phoneNumber,
          'paymentPassword': paymentPassword,
        }
      };

      final response = await _dio.put(
        '/users/$userId',
        data: body,
      );

      if (response.data != null) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> updateUserPaymentPassword(String paymentPassword) async {
    final userModel = await getUserData();
    final int userID = userModel?.id ?? 0;
    final Map<String, dynamic> data = {};
    try {
      data['paymentPassword'] = paymentPassword;
      final response = await _dio.put(
        '/users/$userID',
        data: data,
      );
      if (response.data != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> updateUserPhoneNumber(String phoneNumber) async {
    final userModel = await getUserData();
    final int userID = userModel?.id ?? 0;
    final Map<String, dynamic> data = {};
    try {
      data['userPhoneNumber'] = phoneNumber;
      final response = await _dio.put(
        '/users/$userID',
        data: data,
      );
      if (response.data != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateUserStatInfo({
    int? userCurrentStreak,
    int? totallyLearningDays,
    DateTime? lastTimeCheckout,
    double? totallyLearningHours,
    double? learnedToday,
  }) async {
    try {
      final userModel = await getUserData();
      final int userID = userModel?.id ?? 0;
      final double totallyUserLearningHours =
          userModel?.totallyLearningHours ?? 0.0;
      final double totallyUserLearnedToday = userModel?.learnedToday ?? 0.0;
      final DateTime? lastTimeUserCheckout = userModel?.lastTimeCheckout;
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final last = lastTimeUserCheckout != null
          ? DateTime(
              lastTimeUserCheckout.year,
              lastTimeUserCheckout.month,
              lastTimeUserCheckout.day,
            )
          : null;

      final Map<String, dynamic> data = {};

      if (totallyLearningDays != null) {
        data['totallyLearningDays'] = totallyLearningDays;
      }

      if (lastTimeCheckout != null) {
        data['lastTimeCheckout'] = lastTimeCheckout.toIso8601String();
      }

      if (totallyLearningHours != null) {
        data['totallyLearningHours'] =
            totallyUserLearningHours + totallyLearningHours;
      }

      if (totallyLearningHours != null) {
        // lastTimeUserCheckout !=null ?
        data['learnedToday'] =
            totallyUserLearnedToday + (totallyLearningHours * 60);
      }

      if (learnedToday != null) {
        // lastTimeUserCheckout !=null ?
        data['learnedToday'] = learnedToday;
      }

      if (userCurrentStreak != null) {
        // lastTimeUserCheckout !=null ?
        data['userLearningStreak'] = userCurrentStreak;
      }
      print(data);
      await _dio.put(
        '/users/$userID',
        data: data,
      );
    } catch (e) {}
  }

  Future<UserModel?> editUserData({
    String? username,
    String? avatarPath,
  }) async {
    try {
      final userId = await _sharedPreferencesService.getUserId();
      final url = '/users/$userId';

      var formData = FormData();

      final body = {
        if (username != null) 'username': username,
      };

      await _dio.put(
        url,
        data: body,
      );

      if (avatarPath != null) {
        formData = FormData.fromMap(
          {
            'files': await MultipartFile.fromFile(
              avatarPath,
              filename: avatarPath.split('/').last,
            ),
            'ref': 'plugin::users-permissions.user',
            'refId': userId,
            'field': 'avatar',
          },
        );

        await _dio.post(
          '/upload',
          data: formData,
        );
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> checkUserPaymentPassword(
      {required String paymentPassword}) async {
    final user = await getUserData();

    if (user != null) {
      if (user.paymentPassword == paymentPassword) {
        return true;
      } else {
        return false;
      }
    }

    return false;
  }
}
