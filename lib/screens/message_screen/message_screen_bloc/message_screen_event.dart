import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_screen_event.freezed.dart';

@freezed
class MessageScreenEvent with _$MessageScreenEvent {
  factory MessageScreenEvent.getNotifications() = GetNotificationsEvent;
}