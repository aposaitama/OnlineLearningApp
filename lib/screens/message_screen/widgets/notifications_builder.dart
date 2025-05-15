import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:online_app/screens/message_screen/widgets/notification_item_tile.dart';

import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';
import '../message_screen_bloc/message_screen_bloc.dart';
import '../message_screen_bloc/message_screen_state.dart';

class NotificationsBuilder extends StatelessWidget {
  const NotificationsBuilder({super.key});

  String _formatDate({required DateTime date}) {
    final int hours = date.hour;
    final int minutes = date.minute;


    final String time = '$hours:${minutes.toString().padLeft(2, '0')}';
    final String formattedDate = DateFormat('dd MMM’yyyy').format(date);
    return '$time, $formattedDate';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageScreenBloc, MessageScreenState>(
      builder: (context, state) {
        if (state.notificationListStatus == NotificationListStatus.initial) {
          return Center(
            child: Text(
              'You have no notifications yet',
              style: AppFonts.poppinsBold.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()!
                    .mainTextColor,
                fontSize: 12.0,
                height: 2.0,
              ),
            ),
          );
        } else if (state.notificationListStatus ==
            NotificationListStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.notificationListStatus ==
            NotificationListStatus.successful) {
          return ListView.builder(
            itemCount: state.notifications.length,
            itemBuilder: (context, index) {
              final notification = state.notifications[index];
              return NotificationItemTile(
                notificationDescription: notification.body,
                date: _formatDate(date: notification.date),
                notificationType: notification.notificationType,
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
