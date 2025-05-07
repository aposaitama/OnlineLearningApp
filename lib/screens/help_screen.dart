import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/utils/constants.dart';

import '../resources/app_colors_model.dart';
import '../resources/app_fonts.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Need help?',
          style: AppFonts.poppinsBold.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            helpText,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );;
  }
}
