import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/widgets/learning_plan_item_tile.dart';

class LearningPlanWidget extends StatefulWidget {
  final List<CourseBasicModel> coursesList;
  final List<CourseVideoItem> completedVideos;
  const LearningPlanWidget({
    super.key,
    required this.coursesList,
    required this.completedVideos,
  });

  @override
  State<LearningPlanWidget> createState() => _LearningPlanWidgetState();
}

class _LearningPlanWidgetState extends State<LearningPlanWidget> {
  void _onMorePressed() {
    context.push('/my_courses');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          child: widget.coursesList.isNotEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: min(widget.coursesList.length, 2),
                        itemBuilder: (context, index) {
                          final concreteCourse = widget.coursesList[index];
                          final completedVideoIds =
                              widget.completedVideos.map((e) => e.id).toSet();
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              left: 5.0,
                            ),
                            child: LearningPlanItemTile(
                              totalTaskCount:
                                  concreteCourse.courseVideoItems.length,
                              completedTaskCount:
                                  concreteCourse.courseVideoItems
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
                    widget.coursesList.length > 0
                        ? Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            child: GestureDetector(
                              onTap: _onMorePressed,
                              child: const Text(
                                'more',
                                style: TextStyle(
                                  color: AppColors.deepBlueColor,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                )
              : Center(
                  child: Text(
                    'You have to buy course to see stats',
                    style: AppFonts.poppinsRegular.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.hintTextColor,
                      fontSize: 14.0,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
