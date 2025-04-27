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
    on<GetSearchedByTextCoursesEvent>(_getSearchedCourses);
    on<EnterTextOnCourseScreenEvent>(_onEnterText);
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

  Future<void> _getSearchedCourses(
    GetSearchedByTextCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final searchedCourses = await strapiApiService.searchCoursesByText(
        enteredText: state.enteredText,
      );

      emit(
        state.copyWith(
          loadingStatus: CourseScreenStatus.loaded,
          courseList: searchedCourses,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  void _onEnterText(
    EnterTextOnCourseScreenEvent event,
    Emitter<CourseScreenState> emit,
  ) {
    emit(
      state.copyWith(
        enteredText: event.enteredText,
      ),
    );
  }
}
