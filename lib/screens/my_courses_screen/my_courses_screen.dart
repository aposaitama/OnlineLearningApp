import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/screens/home_screen/widgets/proggress_widget.dart';
import 'package:online_app/screens/my_courses_screen/widgets/course_item_stat.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? AppColors.darkColor : Colors.white,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            Assets.icons.arrowBack,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: Text(
          'My courses',
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 18.0,
            color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const ProggressWidget(
              myCoursesText: false,
            ),
            const SizedBox(
              height: 20.0,
            ),
            BlocBuilder<HomeScreenBloc, HomeScreenState>(
              builder: (context, state) {
                final userCourseList =
                    state.userInfo?.user_purchased_courses ?? [];
                return Expanded(
                  child: GridView.builder(
                    itemCount: userCourseList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 14.0,
                    ),
                    itemBuilder: (context, index) {
                      final concreteCourse = userCourseList[index];

                      final completedCourseVideos =
                          state.userInfo?.completed_course_videos ?? [];
                      final allCompletedCourseID = completedCourseVideos
                          .map(
                            (e) => e.id,
                          )
                          .toSet();
                      final completedTasks = concreteCourse.courseVideoItems
                          .where(
                              (item) => allCompletedCourseID.contains(item.id))
                          .length;
                      return CourseItemStat(
                        onPlayPressed: () => context.push(
                          '/course_details/${concreteCourse.documentId}',
                        ),
                        backgroundColor: AppColors.pinkColor,
                        backgroundButtonColor: AppColors.darkPurpleColor,
                        concreteCourseItemTitle: concreteCourse.courseTitle,
                        totalTasksCount: concreteCourse.courseVideoItems.length,
                        completedTasks: completedTasks,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
