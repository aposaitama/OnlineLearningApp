import 'package:bloc/bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_event.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_state.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';

class MessageScreenBloc extends Bloc<MessageScreenEvent, MessageScreenState> {
  final _sharedPreferencesService = locator<SharedPreferencesService>();

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
          await _sharedPreferencesService.getLocalNotifications();

      if (notifications.isEmpty) {
        emit(
          state.copyWith(
            notificationListStatus: NotificationListStatus.initial,
          ),
        );
        return;
      }
      emit(
        state.copyWith(
          notificationListStatus: NotificationListStatus.successful,
          notifications: notifications,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
