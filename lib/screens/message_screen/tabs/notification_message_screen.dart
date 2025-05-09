import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/screens/message_screen/widgets/message_notification_item_tile.dart';

class NotificationMessageScreen extends StatefulWidget {
  const NotificationMessageScreen({super.key});

  @override
  State<NotificationMessageScreen> createState() =>
      _NotificationMessageScreenState();
}

class _NotificationMessageScreenState extends State<NotificationMessageScreen> {
  @override
  void initState() {
    // context.read<HomeScreenBloc>().add(LoadUserHomeScreenBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: ListView.builder(
                  padding: const EdgeInsets.all(
                    0.0,
                  ),
                  itemCount: state.userInfo?.message_notifications.length ?? 0,
                  itemBuilder: (context, index) {
                    final message =
                        state.userInfo?.message_notifications[index];
                    if (state.userInfo?.message_notifications[index] != null) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: MessageNotificationItemTile(
                          notificationAuthorImageUrl:
                              message?.notificationAuthorImageUrl ?? '',
                          imageUrl: message?.notificationImageUrl ?? '',
                          notificationAuthor: message?.notificationAuthor ?? '',
                          notificationDescription:
                              message?.notificationDescription ?? '',
                          date: message!.createdAt,
                        ),
                      );
                    }
                  })
              // Column(
              //   children: [
              //     SizedBox(
              //       height: 20.0,
              //     ),
              //     MessageNotificationItemTile(
              //       notificationAuthor: 'Bert Pullman',
              //       notificationDescription:
              //           'Congratulations on completing the first lesson, keep up the good work!',
              //       date: '04:32 pm',
              //     ),
              //     SizedBox(
              //       height: 10.0,
              //     ),
              //     MessageNotificationItemTile(
              //       notificationAuthor: 'Bert Pullman',
              //       notificationDescription:
              //           'Congratulations on completing the first lesson, keep up the good work!',
              //       date: '04:32 pm',
              //       imageUrl: '12',
              //     ),
              //     SizedBox(
              //       height: 10.0,
              //     ),
              //     MessageNotificationItemTile(
              //       notificationAuthor: 'Bert Pullman',
              //       notificationDescription:
              //           'Congratulations on completing the first lesson, keep up the good work!',
              //       date: '04:32 pm',
              //     ),
              //     SizedBox(
              //       height: 10.0,
              //     ),
              //     MessageNotificationItemTile(
              //       notificationAuthor: 'Bert Pullman',
              //       notificationDescription:
              //           'Congratulations on completing the first lesson, keep up the good work!',
              //       date: '04:32 pm',
              //       imageUrl: '12',
              //     ),
              //     SizedBox(
              //       height: 10.0,
              //     ),
              //   ],
              // ),
              ),
        );
      },
    );
  }
}
