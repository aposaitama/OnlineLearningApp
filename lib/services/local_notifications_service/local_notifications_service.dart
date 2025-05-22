import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:online_app/repositories/local_notification_repository/local_notification_repository.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationsService {
  final _sharedPrefs = locator<SharedPreferencesService>();
  static final LocalNotificationsService _instance =
  LocalNotificationsService._internal();

  factory LocalNotificationsService() => _instance;

  LocalNotificationsService._internal();

  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static Future<void> localNotificationsInit() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    const InitializationSettings initializationSettings =
    InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _notificationsPlugin.initialize(initializationSettings);

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<NotificationDetails> _notificationDetails() async {
    final isEnabledSound = await _sharedPrefs.getSoundNotificationsStatus();
    AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'default_channel_id',
      'Default',
      channelDescription: 'General notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: isEnabledSound!,
    );

    DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
        presentSound: isEnabledSound);

    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosDetails,
    );

    return platformChannelSpecifics;
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    required NotificationType notificationType,
  }) async {
    final enableNotifications = await _sharedPrefs
        .getEnableNotificationsStatus();
    if (enableNotifications == false) return;

    await _notificationsPlugin.show(
      id,
      title,
      body,
      await _notificationDetails(),
    );

    final localNotificationRepo = locator<LocalNotificationRepository>();

    localNotificationRepo.createNotification(
      notificationBody: body,
      notificationType: notificationType,
    );
  }

  // Future<void> checkPendingNotificationRequests() async {
  //   // await _notificationsPlugin.cancelAll();
  //   final List<PendingNotificationRequest> pendingNotificationRequests =
  //       await _notificationsPlugin.pendingNotificationRequests();
  //   print(pendingNotificationRequests.length);
  // }

  Future<void> scheduleDailyNotificationIfStreakZero(
      {required int streak}) async {
    final enableNotifications = await _sharedPrefs
        .getEnableNotificationsStatus();
    if (enableNotifications == false) return;

    const id = 2;
    await _notificationsPlugin.zonedSchedule(
      id,
      'Reminding!!!',
      'Come back, you have uncompleted courses!',
      _nextInstanceOfScheduledNotif(),
      await _notificationDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );

    final localNotificationRepo = locator<LocalNotificationRepository>();

    localNotificationRepo.createNotification(
      notificationBody: 'Come back, you have uncompleted courses!',
      notificationType: NotificationType.info,
    );
  }

  tz.TZDateTime _nextInstanceOfScheduledNotif() {
    final now = tz.TZDateTime.now(tz.local);

    tz.TZDateTime scheduledDate = tz.TZDateTime(
        tz.local, now.year, now.month, now.day, now.hour + 12, now.minute);

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }

}
