import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/gradient_progress_bar.dart';

class ProggressWidget extends StatelessWidget {
  final bool myCoursesText;
  const ProggressWidget({super.key, required this.myCoursesText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 96.0,
        decoration: BoxDecoration(
          color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkHintTextColor.withValues(
                alpha: 0.1,
              ),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(
                2,
                5,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Learned today',
                    style: AppFonts.poppinsRegular.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.hintTextColor,
                      fontSize: 12.0,
                    ),
                  ),
                  myCoursesText
                      ? GestureDetector(
                          onTap: () => context.push(
                            '/my_courses',
                          ),
                          child: Text(
                            'My courses',
                            style: AppFonts.poppinsRegular.copyWith(
                              color: AppColors.deepBlueColor,
                              fontSize: 12.0,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '46min',
                    style: AppFonts.poppinsBold.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.mainTextColor,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 3.0,
                    ),
                    child: Text(
                      ' / 60min',
                      style: AppFonts.poppinsRegular.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()
                            ?.hintTextColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
              const GradientProgressBar(
                value: 0.9,
              )
            ],
          ),
        ));
  }
}
