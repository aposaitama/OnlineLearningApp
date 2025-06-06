import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/repositories/course_repository/course_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_event.dart';
import 'package:online_app/screens/course_details_screen/bloc/course_details_state.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:video_player/video_player.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  final strapiApiService = locator<StrapiApiService>();
  final userRepo = locator<UserRepository>();
  final courseRepo = locator<CourseRepository>();
  Timer? _timer;

  CourseDetailsBloc() : super(const CourseDetailsState()) {
    on<LoadConcreteCourseInfoEvent>(_loadCourseList);
    on<LoadCourseVideoEvent>(_loadCourseVideo);
    on<PlayVideoEvent>(_playVideo);
    on<PauseVideoEvent>(_pauseVideo);
    on<ResumeVideoEvent>(_resumeVideo);
    on<CloseVideoEvent>(_closeVideo);
    on<FullScreenEvent>(_fullScreen);
    on<ToogleFavouriteEvent>(_toogleFavourite);
    on<FinishedVideoEvent>(_finishedPlayingVideo);
    on<StartTimerEvent>(_startTimer);
    on<CloseTimerEvent>(_closeTimer);
    on<AddTickTimerEvent>(_addTickTimer);
    on<TestFinishedVideo>(_testFinishedVideo);
  }

  Future<void> _testFinishedVideo(
    TestFinishedVideo event,
    Emitter<CourseDetailsState> emit,
  ) async {
    emit(
      state.copyWith(videoWatchingStatus: CourseVideoStatus.finished),
    );
    emit(
      state.copyWith(videoWatchingStatus: CourseVideoStatus.initial),
    );
  }

  Future<void> _startTimer(
    StartTimerEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    _timer?.cancel();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (second) {
        add(const AddTickTimerEvent());
      },
    );
  }

  Future<void> _addTickTimer(
    AddTickTimerEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    print(state.userLearningTime);
    emit(
      state.copyWith(
        userLearningTime: state.userLearningTime + 1,
      ),
    );
  }

  Future<void> _closeTimer(
    CloseTimerEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    _timer?.cancel();
    userRepo.updateUserStatInfo(
      totallyLearningHours: (state.userLearningTime / 3600),
    );
    emit(
      state.copyWith(
        userLearningTime: 0,
      ),
    );
  }

  Future<void> _playVideo(
    PlayVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    state.courseVideo!.play();

    emit(
      state.copyWith(
        videoPlayingId: event.videoPlayingId,
      ),
    );
  }

  Future<void> _finishedPlayingVideo(
    FinishedVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    add(const CloseTimerEvent());
    // state.courseVideo!.dispose();
    final response = await courseRepo.completeVideo(state.videoPlayingId);
    if (response == true) {
      emit(
        state.copyWith(
          videoWatchingStatus: CourseVideoStatus.finished,
        ),
      );
      emit(
        state.copyWith(
          videoPlayingId: '',
          videoLoadingStatus: CourseLoadingVideoStatus.initial,
          videoWatchingStatus: CourseVideoStatus.initial,
          courseVideo: null,
        ),
      );
    }
    emit(
      state.copyWith(
        videoPlayingId: '',
        videoLoadingStatus: CourseLoadingVideoStatus.initial,
        courseVideo: null,
      ),
    );
  }

  Future<void> _toogleFavourite(
    ToogleFavouriteEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    final currentUser = await userRepo.getUserData();
    final List<CourseId> favorites =
        List.from(currentUser?.favourite_items ?? []);

    final exists = favorites.any(
      (item) => item.id.toString() == event.documentId,
    );

    if (exists) {
      courseRepo.removeFromFavourite(event.documentId);
    } else {
      courseRepo.addToFavourite(event.documentId);
    }

    emit(
      state.copyWith(
        isInFavourite: !exists,
      ),
    );
  }

  Future<void> _closeVideo(
    CloseVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;

    state.courseVideo!.dispose();
    emit(
      state.copyWith(
        videoPlayingId: '',
        videoLoadingStatus: CourseLoadingVideoStatus.initial,
        courseVideo: null,
      ),
    );
  }

  Future<void> _fullScreen(
    FullScreenEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    emit(
      state.copyWith(
        isFullScreen: !state.isFullScreen,
      ),
    );
  }

  Future<void> _pauseVideo(
    PauseVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    add(const CloseTimerEvent());

    state.courseVideo!.pause();
  }

  Future<void> _resumeVideo(
    ResumeVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    if (state.courseVideo == null) return;
    add(const StartTimerEvent());
    state.courseVideo!.play();
  }

  Future<void> _loadCourseList(
    LoadConcreteCourseInfoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    final course = await courseRepo.fetchConcreteCourse(
      event.documentID,
    );
    final currentUser = await userRepo.getUserData();

    final favorites = List<CourseId>.from(currentUser?.favourite_items ?? []);
    final isFavorite =
        favorites.any((fav) => fav.documentId == event.documentID);
    emit(
      state.copyWith(
        loadingStatus: CourseDetailsLoadingStatus.loaded,
        course: course,
        isInFavourite: isFavorite,
      ),
    );
  }

  Future<void> _loadCourseVideo(
    LoadCourseVideoEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    emit(state.copyWith(videoLoadingStatus: CourseLoadingVideoStatus.loading));

    if (state.courseVideo != null) {
      await state.courseVideo!.pause();

      add(const CloseTimerEvent());
      final response = await courseRepo.completeVideo(state.videoPlayingId);
      if (response == true) {
        emit(
          state.copyWith(
            videoWatchingStatus: CourseVideoStatus.finished,
          ),
        );
        emit(
          state.copyWith(
            videoPlayingId: '',
            videoLoadingStatus: CourseLoadingVideoStatus.initial,
            videoWatchingStatus: CourseVideoStatus.initial,
            courseVideo: null,
          ),
        );

        return;
      }
      emit(
        state.copyWith(
          videoPlayingId: '',
          videoLoadingStatus: CourseLoadingVideoStatus.initial,
          courseVideo: null,
        ),
      );
      return;
    }
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(
        event.videoUrl.toImageUrl(),
      ),
    );
    await controller.initialize();
    controller.play();
    add(const StartTimerEvent());
    emit(
      state.copyWith(
        videoPlayingId: event.videoPlayingId,
        videoLoadingStatus: CourseLoadingVideoStatus.loaded,
        courseVideo: controller,
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
