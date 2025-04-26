import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';

import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';

class CourseScreenBloc extends Bloc<CourseScreenEvent, CourseScreenState> {
  final strapiApiService = locator<StrapiApiService>();

  CourseScreenBloc() : super(const CourseScreenState()) {
    on<LoadCourseBasicInfoEvent>(_loadCourseList);
    on<FilterCoursesEvent>(_onFilterCourses);
  }

  Future<void> _loadCourseList(
    LoadCourseBasicInfoEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    final courseItems = await strapiApiService.fetchCourseItems();
    emit(
      state.copyWith(
        loadingStatus: CourseScreenStatus.loaded,
        courseList: courseItems,
      ),
    );
  }

  Future<void> _onFilterCourses(
    FilterCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final List<CourseBasicModel> result =
          await strapiApiService.filterCourses(
        categories: event.categories,
      );

      final List<CourseBasicModel> filteredCourses = result.where(
        (course) {
          final durationInHours = course.totalCourseDurationInSeconds.toHours();

          final matchesDuration = event.durations.isEmpty ||
              event.durations.any(
                (duration) =>
                    durationInHours >= duration.start &&
                    durationInHours <= duration.end,
              );

          final matchesPrice = course.coursePrice >= event.priceRange.start &&
              course.coursePrice <= event.priceRange.end;

          return matchesDuration && matchesPrice;
        },
      ).toList();

      emit(
        state.copyWith(
          courseList: filteredCourses,
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
