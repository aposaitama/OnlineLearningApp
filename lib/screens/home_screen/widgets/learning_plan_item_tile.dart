import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/circle_progress_painter.dart';

class LearningPlanItemTile extends StatelessWidget {
  final int totalTaskCount;
  final int completedTaskCount;
  final String courseTitle;
  const LearningPlanItemTile(
      {super.key,
      required this.totalTaskCount,
      required this.completedTaskCount,
      required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleProgressWidget(
              proggress: _proggressPercentage(),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              courseTitle,
              style: AppFonts.poppinsMedium.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.mainTextColor,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              completedTaskCount.toString(),
              style: AppFonts.poppinsRegular.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.mainTextColor,
                fontSize: 14.0,
              ),
            ),
            Text(
              '/${totalTaskCount.toString()}',
              style: AppFonts.poppinsRegular.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.hintTextColor,
                fontSize: 14.0,
              ),
            )
          ],
        )
      ],
    );
  }

  double _proggressPercentage() {
    return completedTaskCount / totalTaskCount;
  }
}
