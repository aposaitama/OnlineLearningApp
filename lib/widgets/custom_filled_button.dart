import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class CustomFilledButton extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onTap;
  final Color? buttonColor;

  const CustomFilledButton({
    super.key,
    required this.buttonTitle,
    this.onTap,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.deepBlueColor,
          borderRadius: BorderRadius.circular(
            13.0,
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: AppFonts.poppinsMedium.copyWith(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
