import 'package:flutter/material.dart';
import 'package:online_app/screens/message_screen/widgets/message_notification_item_tile.dart';

class NotificationMessageScreen extends StatelessWidget {
  const NotificationMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              MessageNotificationItemTile(
                notificationAuthor: 'Bert Pullman',
                notificationDescription:
                    'Congratulations on completing the first lesson, keep up the good work!',
                date: '04:32 pm',
              ),
              SizedBox(
                height: 10.0,
              ),
              MessageNotificationItemTile(
                notificationAuthor: 'Bert Pullman',
                notificationDescription:
                    'Congratulations on completing the first lesson, keep up the good work!',
                date: '04:32 pm',
                imageUrl: '12',
              ),
              SizedBox(
                height: 10.0,
              ),
              MessageNotificationItemTile(
                notificationAuthor: 'Bert Pullman',
                notificationDescription:
                    'Congratulations on completing the first lesson, keep up the good work!',
                date: '04:32 pm',
              ),
              SizedBox(
                height: 10.0,
              ),
              MessageNotificationItemTile(
                notificationAuthor: 'Bert Pullman',
                notificationDescription:
                    'Congratulations on completing the first lesson, keep up the good work!',
                date: '04:32 pm',
                imageUrl: '12',
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
