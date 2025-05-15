import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';

part 'message_screen_state.freezed.dart';

enum NotificationListStatus {
  initial,
  loading,
  successful,
  error,
}

@freezed
class MessageScreenState with _$MessageScreenState {
  factory MessageScreenState({
    @Default([]) List<LocalNotificationModel> notifications,
    @Default(NotificationListStatus.initial) NotificationListStatus notificationListStatus,
  }) = _MessageScreenState;
}
