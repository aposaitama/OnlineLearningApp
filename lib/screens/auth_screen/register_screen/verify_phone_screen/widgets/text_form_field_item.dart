import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class TextFormFieldItem extends StatelessWidget {
  final TextEditingController? controller;

  const TextFormFieldItem({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: 50.0,
      height: 58.0,
      child: TextFormField(
        controller: controller,
        showCursor: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: isDark ? AppColors.darkSlateBlue : Colors.transparent,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: BorderSide(
              width: 0.5,
              color: isDark ? Colors.transparent : AppColors.lavanderGrayColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: BorderSide(
              width: 0.5,
              color: isDark ? Colors.transparent : AppColors.lavanderGrayColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: BorderSide(
              width: 0.5,
              color: isDark ? Colors.transparent : AppColors.lavanderGrayColor,
            ),
          ),
        ),
        textAlign: TextAlign.center,
        style: AppFonts.poppinsMedium.copyWith(
          fontSize: 22.0,
          color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
        ),
      ),
    );
  }
}
