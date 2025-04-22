import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';

class GradientProgressBar extends StatelessWidget {
  final double value;

  const GradientProgressBar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final reversedValue = 1.0 - value;
    return Container(
      height: 6.0,
      decoration: BoxDecoration(
        color: isDark
            ? Theme.of(context).extension<AppColorsModel>()?.hintTextColor
            : AppColors.lightGreyColor,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                // width: constraints.maxWidth * value.clamp(0.0, 1.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      isDark
                          ? Theme.of(
                              context,
                            ).extension<AppColorsModel>()!.hintTextColor
                          : AppColors.lightGreyColor,
                      AppColors.orangeProgressBarColor,
                    ],
                    stops: const [0.0, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Container(
                width: constraints.maxWidth * reversedValue.clamp(0.0, 1.0),
                decoration: BoxDecoration(
                  color: isDark
                      ? Theme.of(context)
                          .extension<AppColorsModel>()!
                          .hintTextColor
                      : AppColors.lightGreyColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
