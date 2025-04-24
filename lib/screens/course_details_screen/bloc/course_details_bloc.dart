import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:video_player/video_player.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final strapiApiService = locator<StrapiApiService>();
  CourseDetailsBloc() : super(const CourseDetailsState()) {
    on<LoadConcreteCourseInfoEvent>(_loadCourseList);
    on<LoadCourseVideoEvent>(_loadCourseVideo);
    on<PlayVideoEvent>(_playVideo);
    on<PauseVideoEvent>(_pauseVideo);
    on<ResumeVideoEvent>(_resumeVideo);
  }

  Future<void> _playVideo(
    PlayVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    state.courseVideo!.play();
  }

  Future<void> _pauseVideo(
    PauseVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    state.courseVideo!.pause();
  }

  Future<void> _resumeVideo(
    ResumeVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    state.courseVideo!.play();
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

  Future<void> _loadCourseVideo(
    LoadCourseVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo != null) {
      await state.courseVideo!.pause();
      await state.courseVideo!.dispose();
    }
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'http://localhost:1337${event.videoUrl}',
      ),
    );
    await controller.initialize();
    controller.play();

    emit(state.copyWith(
        videoLoadingStatus: CourseLoadingVideoStatus.loaded,
        courseVideo: controller));
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    // strapiApiService.fetchConcreteCourse(
    //   event.videoUrl,
    // );
  }
}
