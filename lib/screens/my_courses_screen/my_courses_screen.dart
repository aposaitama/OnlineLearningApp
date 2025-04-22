import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
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
            'assets/icons/ArrowBack.svg',
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
            Expanded(
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 14.0,
                ),
                itemBuilder: (context, index) {
                  return const CourseItemStat(
                    backgroundColor: AppColors.pinkColor,
                    backgroundButtonColor: AppColors.darkPurpleColor,
                    concreteCourseItemTitle: 'Java Development',
                    totalTasksCount: 24,
                    completedTasks: 5,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
