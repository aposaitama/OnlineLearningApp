import 'package:dio/dio.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:online_app/utils/extensions.dart';

import '../../di/service_locator.dart';

class LocalNotificationRepository {
  static final LocalNotificationRepository _instance =
      LocalNotificationRepository._internal();

  factory LocalNotificationRepository() => _instance;

  LocalNotificationRepository._internal();

  final Dio _dio = locator<Dio>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();

  Future<void> createNotification({
    required String notificationBody,
    required NotificationType notificationType,
  }) async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final body = {
        'data': {
          'body': notificationBody,
          'date': DateTime.now().toUtc().toIso8601String(),
          'notificationType': notificationType.name,
          'users_permissions_user': userId,
        },
      };

      await _dio.post(
        '/local-notifications',
        data: body,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<List<LocalNotificationModel>> getLocalNotifications() async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final response = await _dio
          .get('/local-notifications?filters[users_permissions_user]=$userId');

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) =>
                  LocalNotificationModel.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<LocalNotificationModel?> getLastLocalNotification() async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final response = await _dio.get(
          '/local-notifications?filters[body][\$eq]=Come%20back%2C%20you%20have%20uncompleted%20courses!&filters[users_permissions_user]=$userId&sort[0]=date:desc&pagination[page]=1&pagination[pageSize]=1');

      if (response.isSuccess) {
        final data = response.data['data'];
        if (data != null && data.isNotEmpty) {
          return LocalNotificationModel.fromJson(response.data['data'][0]);
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteNotif(String notifId) async {
    try {
      await _dio.delete('/local-notifications/$notifId');
    } catch (e) {
      rethrow;
    }
  }
}
