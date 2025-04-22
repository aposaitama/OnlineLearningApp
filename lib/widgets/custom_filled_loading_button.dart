import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';

class CustomFilledLoadingButton extends StatelessWidget {
  const CustomFilledLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.deepBlueColor,
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
