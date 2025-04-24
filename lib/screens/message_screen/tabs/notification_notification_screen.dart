import 'package:flutter/material.dart';
import 'package:online_app/screens/message_screen/widgets/notification_item_tile.dart';

class NotificationNotificationScreen extends StatelessWidget {
  const NotificationNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          children: [
            NotificationItemTile(
              notificationDescription:
                  'Congratulations on completing the on completing the',
              date: 'Just now',
            )
          ],
        ),
      ),
    );
  }
}
