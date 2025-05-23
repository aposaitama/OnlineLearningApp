import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_bloc.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';
import '../../../utils/constants.dart';

class CourseFiltersRow extends StatelessWidget {
  final Function(String) selectFilter;

  const CourseFiltersRow({
    super.key,
    required this.selectFilter,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BlocBuilder<CourseScreenBloc, CourseScreenState>(
      builder: (context, state) {
        return Wrap(
          spacing: 17.0,
          runSpacing: 20.0,
          children: filtersOnCourseScreen.map(
            (filter) {
              return GestureDetector(
                onTap: () => selectFilter(filter),
                child: Container(
                  height: 28.0,
                  width: 73.0,
                  decoration: BoxDecoration(
                    color: filter == state.selectedCourseFilter
                        ? AppColors.deepBlueColor
                        : isDark
                            ? AppColors.darkHintTextColor
                            : Colors.white,
                    borderRadius: BorderRadius.circular(
                      13.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      filter,
                      style: AppFonts.poppinsRegular.copyWith(
                        color: filter == state.selectedCourseFilter
                            ? Colors.white
                            : Theme.of(
                                context,
                              ).extension<AppColorsModel>()?.hintTextColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
