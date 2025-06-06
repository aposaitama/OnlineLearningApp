import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/gradient_progress_bar.dart';

class CourseItemStat extends StatelessWidget {
  final Color backgroundColor;

  final String concreteCourseItemTitle;
  final int totalTasksCount;
  final int completedTasks;
  final void Function()? onPlayPressed;
  const CourseItemStat({
    super.key,
    required this.totalTasksCount,
    required this.completedTasks,
    required this.concreteCourseItemTitle,
    required this.backgroundColor,
    this.onPlayPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          13.0,
        ),
        color: isDark
            ? AppColors.charcoalBlue
            : backgroundColor.withValues(
                alpha: 0.5,
              ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 19.0,
          right: 11.0,
          bottom: 11.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                concreteCourseItemTitle,
                style: AppFonts.poppinsBold.copyWith(
                  color: Theme.of(context)
                      .extension<AppColorsModel>()
                      ?.mainTextColor,
                  fontSize: 16.0,
                  height: 1.7,
                ),
              ),
            ),
            GradientProgressBar(
              progressColor: backgroundColor,
              isBackGroundWhite: true,
              value: completedTasks / totalTasksCount,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Completed',
              style: AppFonts.poppinsRegular.copyWith(
                color:
                    isDark ? AppColors.lavanderGrayColor : AppColors.darkColor,
                fontSize: 12.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 7.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        completedTasks.toString(),
                        style: AppFonts.poppinsBold.copyWith(
                          color: Theme.of(context)
                              .extension<AppColorsModel>()
                              ?.mainTextColor,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        '/$totalTasksCount',
                        style: AppFonts.poppinsBold.copyWith(
                          color: Theme.of(context)
                              .extension<AppColorsModel>()
                              ?.mainTextColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onPlayPressed,
                  child: Container(
                    height: 44.0,
                    width: 44.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.icons.polygon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
