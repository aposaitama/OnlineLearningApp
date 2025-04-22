// import 'package:flutter/material.dart';
// import 'package:online_app/resources/app_colors_model.dart';
// import 'package:online_app/resources/app_fonts.dart';

// class MessageScreen extends StatelessWidget {
//   const MessageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//           appBar: AppBar(
//             toolbarHeight: 85.0,
//             backgroundColor:
//                 Theme.of(context).extension<AppColorsModel>()!.darkColor,
//             centerTitle: false,
//             title: Text(
//               'Notifications',
//               style: AppFonts.poppinsBold.copyWith(
//                 color: Theme.of(context)
//                     .extension<AppColorsModel>()!
//                     .mainTextColor,
//                 fontSize: 24.0,
//                 height: 2.0,
//               ),
//             ),
//           ),
//           body: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text('message'),
//                   Text('notification'),
//                 ],
//               )
//             ],
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/message_screen/tabs/notification_message_screen.dart';
import 'package:online_app/screens/message_screen/tabs/notification_notification_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shape: Border(
            bottom: BorderSide(
              color: isDark ? AppColors.darkColor : Colors.white,
            ),
          ),
          toolbarHeight: 85.0,
          backgroundColor:
              Theme.of(context).extension<AppColorsModel>()!.darkColor,
          centerTitle: false,
          title: Text(
            'Notifications',
            style: AppFonts.poppinsBold.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 24.0,
              height: 2.0,
            ),
          ),
          bottom: TabBar(
            indicatorColor: AppColors.deepBlueColor,
            labelColor:
                Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: 'message',
              ),
              Tab(
                text: 'notification',
              ),
            ],
            labelStyle: AppFonts.poppinsRegular.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()?.hintTextColor,
              fontSize: 16.0,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationMessageScreen(),
            NotificationNotificationScreen(),
          ],
        ),
      ),
    );
  }
}
