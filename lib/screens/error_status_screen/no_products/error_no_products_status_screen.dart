import 'package:flutter/material.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/error_status_screen/widget/error_status_item_tile.dart';

class ErrorNoProductsStatusScreen extends StatelessWidget {
  const ErrorNoProductsStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorStatusItemTile(
        iconPath: Assets.icons.noProducts,
        errorTitle: 'No products',
        errorDescription: 'You don\'t have any products yet!',
        buttonTitle: 'Try again',
      ),
    );
  }
}
