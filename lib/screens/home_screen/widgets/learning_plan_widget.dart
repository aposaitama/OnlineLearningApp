import 'package:flutter/material.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/learning_plan_item_tile.dart';

class LearningPlanWidget extends StatelessWidget {
  final List<CourseBasicModel> coursesList;
  final List<CourseVideoItem> completedVideos;
  const LearningPlanWidget({
    super.key,
    required this.coursesList,
    required this.completedVideos,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Learning Plan',
          style: AppFonts.poppinsMedium.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Container(
          height: 133.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
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
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 6.0,
            ),
            child: ListView.builder(
              itemCount: coursesList.length,
              itemBuilder: (context, index) {
                final concreteCourse = coursesList[index];
                final completedVideoIds =
                    completedVideos.map((e) => e.id).toSet();

                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: LearningPlanItemTile(
                    totalTaskCount: concreteCourse.courseVideoItems.length,
                    completedTaskCount: concreteCourse.courseVideoItems
                        .where(
                          (video) => completedVideoIds.contains(
                            video.id,
                          ),
                        )
                        .length,
                    courseTitle: concreteCourse.courseTitle,
                  ),
                );
              },
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 16.0,
          //     vertical: 10.0,
          //   ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       const LearningPlanItemTile(
          //         totalTaskCount: 48,
          //         completedTaskCount: 40,
          //         courseTitle: 'Packaging Design',
          //       ),
          //       const LearningPlanItemTile(
          //         totalTaskCount: 24,
          //         completedTaskCount: 6,
          //         courseTitle: 'Product Design',
          //       ),
          //       corsesList.length > 2
          //           ? Text(
          //               'more',
          //               style: AppFonts.poppinsRegular.copyWith(
          //                 color: AppColors.deepBlueColor,
          //                 fontSize: 14.0,
          //               ),
          //             )
          //           : const SizedBox.shrink(),
          //     ],
          //   ),
          // ),
        ),
      ],
    );
  }
}
