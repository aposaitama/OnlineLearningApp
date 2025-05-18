import 'dart:convert';

import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  Future<SharedPreferences> _prefs() async =>
      await SharedPreferences.getInstance();

  Future<void> saveLocalNotification({
    required List<LocalNotificationModel> notifications,
  }) async {
    final prefs = await _prefs();

    final jsonString = jsonEncode(
      notifications
          .map(
            (notification) => notification.toJson(),
          )
          .toList(),
    );

    await prefs.setString('notifications_key', jsonString,);
  }

  Future<List<LocalNotificationModel>> getLocalNotifications() async {
    final prefs = await _prefs();
    final jsonString = prefs.getString('notifications_key');

    if (jsonString == null) return [];

    final List<dynamic> decoded = jsonDecode(jsonString);

    final List<LocalNotificationModel> notifications = decoded
        .map((json) => LocalNotificationModel.fromJson(json as Map<String, dynamic>))
        .toList();

    return notifications;
  }
}
