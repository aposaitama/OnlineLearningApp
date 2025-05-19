import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';

import '../../../resources/app_fonts.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;
  final int currentPage;

  const OnboardingWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Container(
          width: 260.0,
          height: 260.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: isDark
                ? Colors.transparent
                : currentPage == 0
                    ? AppColors.skyBlue
                    : currentPage == 1
                        ? AppColors.lightGreen
                        : Colors.transparent,
          ),
          child: image,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 38.0,
            bottom: 8.0,
          ),
          child: Text(
            title,
            style: AppFonts.poppinsRegular.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          subtitle,
          style: AppFonts.poppinsRegular.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.hintTextColor,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
