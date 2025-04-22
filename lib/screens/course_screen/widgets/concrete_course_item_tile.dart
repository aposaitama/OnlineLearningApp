import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';

class ConcreteCourseItemTile extends StatelessWidget {
  final String concreteCourseTitle;
  final String concreteCourseAuthor;
  final double concreteCoursePrice;
  final int concreteCourseDuration;
  const ConcreteCourseItemTile({
    super.key,
    required this.concreteCourseTitle,
    required this.concreteCourseAuthor,
    required this.concreteCoursePrice,
    required this.concreteCourseDuration,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16.0,
      ),
      child: Container(
        height: 96.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            13.0,
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
          color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            14.0,
          ),
          child: Row(
            children: [
              Container(
                height: 68.0,
                width: 68.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    13.0,
                  ),
                  color: AppColors.darkHintTextColor,
                ),
              ),
              const SizedBox(
                width: 35.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    concreteCourseTitle,
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.mainTextColor,
                      fontSize: 14.0,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Union.svg'),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        concreteCourseAuthor,
                        style: AppFonts.poppinsRegular.copyWith(
                          color: Theme.of(
                            context,
                          ).extension<AppColorsModel>()?.hintTextColor,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 5.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '\$${concreteCoursePrice.toStringAsFixed(
                            1,
                          )}',
                          style: AppFonts.poppinsBold.copyWith(
                            color: AppColors.deepBlueColor,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: isDark
                                ? Colors.transparent
                                : AppColors.pinkColor,
                            borderRadius: BorderRadius.circular(
                              30.0,
                            ),
                          ),
                          child: Text(
                            '${concreteCourseDuration.toString()} hours',
                            style: AppFonts.poppinsRegular.copyWith(
                              color: AppColors.orangeProgressBarColor,
                              fontSize: 10.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
