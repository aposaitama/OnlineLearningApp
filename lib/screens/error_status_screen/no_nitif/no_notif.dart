import 'package:flutter/material.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/error_status_screen/widget/error_status_item_tile.dart';

class NoNotif extends StatelessWidget {
  const NoNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorStatusItemTile(
        iconPath: Assets.icons.noNotif,
        errorTitle: 'No Messages yet!',
        errorDescription: 'You don\'t have any products yet!',
        buttonTitle: 'Try again',
      ),
    );
  }
}
