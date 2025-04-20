import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()!.darkColor,
        centerTitle: false,
        title: Text(
          'Account',
          style: AppFonts.poppinsBold.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            fontSize: 24.0,
            height: 2.0,
          ),
        ),
      ),
      body: const Center(
        child: Text('Account'),
      ),
    );
  }
}
