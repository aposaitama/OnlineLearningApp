import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:online_app/di/service_locator.dart';

import 'package:online_app/main.dart';
import 'package:online_app/repositories/notification_repository/notification_repository.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';

class FirebaseApiService {
//create an instance of Firebase Msg
  final _sharedPrefs = locator<SharedPreferencesService>();
  final _notifRepo = locator<NotificationRepository>();
  final _firebaseMessaging = FirebaseMessaging.instance;
  final Function(RemoteMessage message)? onNewMessage;
  FirebaseApiService(this.onNewMessage);

  //init notif

  Future<void> initNotif() async {
    if (Platform.isAndroid) {
      await _firebaseMessaging.requestPermission();

      final fCMToken = await _firebaseMessaging.getToken();
      print(fCMToken);
      initPushNotifications();
    }
  }

  void handleMessage(RemoteMessage? message) async {
    final bool? enableNotif = await _sharedPrefs.getEnableNotificationsStatus();
    if(enableNotif == false) return;

    if (message == null) return;
    final context = navigatorKey.currentState?.overlay?.context;
    if (context != null) {
      if (onNewMessage != null) {
        onNewMessage!(message);
        _notifRepo.uploadNotification(message);
      }
    }
  }

  Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(
          (message) => handleMessage(
            message,
          ),
        );

    FirebaseMessaging.onMessage.listen(
      (message) => handleMessage(
        message,
      ),
    );

    FirebaseMessaging.onMessageOpenedApp.listen(
      (message) => handleMessage(
        message,
      ),
    );
  }
}
