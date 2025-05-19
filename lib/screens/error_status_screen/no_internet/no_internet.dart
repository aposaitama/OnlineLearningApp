import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/error_status_screen/widget/error_status_item_tile.dart';
import 'package:online_app/services/connectivity_service/connectivity_service.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorStatusItemTile(
        iconPath: Assets.icons.noNetwork,
        errorTitle: 'No network',
        errorDescription: 'Please check your internet connection and try again',
        buttonTitle: 'Try again',
        onButtonTap: () =>
            GetIt.instance<ConnectivityService>().checkOnpressedConnection(),
      ),
    );
  }
}
