import 'package:bloc/bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/local_notification_repository/local_notification_repository.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_event.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_state.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';

class MessageScreenBloc extends Bloc<MessageScreenEvent, MessageScreenState> {
  final _localNotificationRepo = locator<LocalNotificationRepository>();

  MessageScreenBloc() : super(MessageScreenState()) {
    on<GetNotificationsEvent>(_onGetNotifications);
  }

  Future<void> _onGetNotifications(
    GetNotificationsEvent event,
    Emitter<MessageScreenState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          notificationListStatus: NotificationListStatus.loading,
        ),
      );

      final notifications =
          await _localNotificationRepo.getLocalNotifications();

      if (notifications.isEmpty) {
        emit(
          state.copyWith(
            notificationListStatus: NotificationListStatus.initial,
          ),
        );
        return;
      }
      final filteredNotifications = notifications.where((notif) {
        if (notif.body == "Come back, you have uncompleted courses!") {
          final notifDatePlus9h = notif.date.add(const Duration(hours: 9));

          if (notifDatePlus9h.isAfter(DateTime.now())) {
            return false;
          }
        }

        return true;
      }).toList();
      emit(
        state.copyWith(
          notificationListStatus: NotificationListStatus.successful,
          notifications: filteredNotifications,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
