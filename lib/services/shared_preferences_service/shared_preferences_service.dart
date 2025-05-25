import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance =
      SharedPreferencesService._internal();

  factory SharedPreferencesService() => _instance;

  SharedPreferencesService._internal();

  Future<SharedPreferences> _prefs() async =>
      await SharedPreferences.getInstance();

  Future<void> saveUserId(int userId) async {
    final prefs = await _prefs();

    await prefs.setInt(
      'user_id',
      userId,
    );
  }

  Future<int?> getUserId() async {
    final prefs = await _prefs();

    return prefs.getInt('user_id');
  }

  Future<void> saveEnableNotificationsStatus({
    required bool enableNotifications,
  }) async {
    final prefs = await _prefs();

    await prefs.setBool(
      'enable_notifications',
      enableNotifications,
    );
  }

  Future<bool?> getEnableNotificationsStatus() async {
    final prefs = await _prefs();

    final bool? enableNotifications = prefs.getBool('enable_notifications');

    return enableNotifications;
  }

  Future<void> initializeNotificationsStatus() async {
    final prefs = await _prefs();

    if (!prefs.containsKey('enable_notifications')) {
      await prefs.setBool('enable_notifications', true);
    }

    if(!prefs.containsKey('enable_notifications_sound')){
      await prefs.setBool('enable_notifications_sound', true);
    }
  }

  Future<void> saveSoundNotificationsStatus({
    required bool enableNotificationsSound,
  }) async {
    final prefs = await _prefs();

    await prefs.setBool(
      'enable_notifications_sound',
      enableNotificationsSound,
    );
  }

  Future<bool?> getSoundNotificationsStatus() async {
    final prefs = await _prefs();

    final bool? enableNotificationsSound =
        prefs.getBool('enable_notifications_sound');

    return enableNotificationsSound;
  }

  Future<void> saveAlarmRequest(bool isRequested) async {
    final prefs = await _prefs();

    await prefs.setBool('exact_alarm_requested', isRequested);
  }

  Future<bool?> getAlarmRequest() async {
    final prefs = await _prefs();

    final bool? isRequested = prefs.getBool('exact_alarm_requested');

    return isRequested;
  }
}
