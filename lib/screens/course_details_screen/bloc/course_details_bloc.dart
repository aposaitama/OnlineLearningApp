import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final strapiApiService = locator<StrapiApiService>();
  CourseDetailsBloc() : super(const CourseDetailsState()) {
    on<LoadConcreteCourseInfoEvent>(_loadCourseList);
  }

  Future<void> _loadCourseList(
    LoadConcreteCourseInfoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    final course = await strapiApiService.fetchConcreteCourse(
      event.documentID,
    );
    emit(
      state.copyWith(
        loadingStatus: CourseDetailsLoadingStatus.loaded,
        course: course,
      ),
    );
  }
}
