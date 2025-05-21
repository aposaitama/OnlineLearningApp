import 'package:dio/dio.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
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
    required String notificationType,
  }) async {
    try {
      final int? userId = await _sharedPreferencesService.getUserId();

      final body = {
        'data': {
          'body': notificationBody,
          'date': DateTime.now().toUtc().toIso8601String(),
          'notificationType': notificationType,
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
}
