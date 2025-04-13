import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class KeyField extends StatelessWidget {
  final String num;

  const KeyField({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Text(
      num,
      style: AppFonts.poppinsBold.copyWith(
        fontSize: 22.0,
        color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
      ),
    );
  }
}
