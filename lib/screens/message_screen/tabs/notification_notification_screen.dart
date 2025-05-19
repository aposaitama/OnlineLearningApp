import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_event.dart';
import 'package:online_app/screens/message_screen/message_screen_bloc/message_screen_state.dart';
import 'package:online_app/screens/message_screen/widgets/notification_item_tile.dart';
import 'package:online_app/screens/message_screen/widgets/notifications_builder.dart';

import '../message_screen_bloc/message_screen_bloc.dart';

class NotificationNotificationScreen extends StatefulWidget {
  const NotificationNotificationScreen({super.key});

  @override
  State<NotificationNotificationScreen> createState() =>
      _NotificationNotificationScreenState();
}

class _NotificationNotificationScreenState
    extends State<NotificationNotificationScreen> {
  MessageScreenBloc get _messageScreenBloc => context.read<MessageScreenBloc>();

  @override
  void initState() {
    super.initState();
    _messageScreenBloc.add(
      GetNotificationsEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: NotificationsBuilder(),
      ),
    );
  }
}
