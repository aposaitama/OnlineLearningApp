import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/utils/extensions.dart';

class CourseInfoWidget extends StatelessWidget {
  final String courseTitle;
  final String courseDescription;
  final double coursePrice;
  final int courseDuration;
  final int courseVideoLength;
  const CourseInfoWidget({
    super.key,
    required this.courseTitle,
    required this.courseDescription,
    required this.coursePrice,
    required this.courseDuration,
    required this.courseVideoLength,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                courseTitle,
                style: AppFonts.poppinsBold.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .mainTextColor,
                  fontSize: 20.0,
                  height: 2.0,
                ),
              ),
              Text(
                '\$${coursePrice.toString()}',
                style: AppFonts.poppinsBold.copyWith(
                  color: AppColors.deepBlueColor,
                  fontSize: 20.0,
                  height: 2.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            children: [
              Text(
                courseDuration.toTimeFormat(),
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .hintTextColor,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                '${courseVideoLength.toString()} Lessons',
                style: AppFonts.poppinsRegular.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()!
                      .hintTextColor,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            'About this course',
            style: AppFonts.poppinsBold.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 16.0,
              height: 2.0,
            ),
          ),
          Text(
            courseDescription,
            style: AppFonts.poppinsRegular.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.hintTextColor,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
