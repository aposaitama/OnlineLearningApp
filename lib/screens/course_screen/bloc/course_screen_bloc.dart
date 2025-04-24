import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';

import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class CourseScreenBloc extends Bloc<CourseScreenEvent, CourseScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  CourseScreenBloc() : super(const CourseScreenState()) {
    on<LoadCourseBasicInfoEvent>(_loadCourseList);
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
}
