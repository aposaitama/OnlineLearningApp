import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';

class NotificationRepository {
  final Dio _dio = locator<Dio>();
  final userRepo = locator<UserRepository>();

  Future<void> uploadNotification(RemoteMessage message) async {
    try {
      final userModel = await userRepo.getUserData();
      final int userID = userModel?.id ?? 0;

      final response = await _dio.post(
        '/message-notifications',
        data: {
          "data": {
            "notificationAuthor": message.notification?.title ?? '',
            "notificationDescription": message.notification?.body ?? '',
            "notificationAuthorImageUrl": message.data['authorImage'],
            "notificationImageUrl":
                message.notification?.android?.imageUrl ?? '',
          }
        },
      );
      if (response.data['data'] != null) {
        final notificationID = response.data['data']['id'];
        await _dio.put(
          '/users/$userID',
          data: {
            'message_notifications': {
              "connect": [notificationID]
            }
          },
        );
      }

      // await _dio.put(
      //   '/users/$userID',
      //   data: {
      //     'favourite_items': {
      //       "disconnect": [courseID]
      //     }
      //   },
      // );
      //  final response = await _dio.post();
    } catch (e) {}
  }
}
