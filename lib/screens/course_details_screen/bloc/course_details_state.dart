import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';
import 'package:video_player/video_player.dart';

part 'course_details_state.freezed.dart';

enum CourseDetailsLoadingStatus {
  initial,
  loading,
  loaded,
  error,
}

enum CourseLoadingVideoStatus {
  initial,
  loading,
  loaded,
  error,
}

enum CourseVideoStatus {
  initial,
  finished,
}

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState({
    CourseConcreteModel? course,
    @Default(
      CourseDetailsLoadingStatus.initial,
    )
    CourseDetailsLoadingStatus loadingStatus,
    @Default(
      CourseLoadingVideoStatus.initial,
    )
    CourseLoadingVideoStatus videoLoadingStatus,
    @Default(
      CourseVideoStatus.initial,
    )
    CourseVideoStatus videoWatchingStatus,
    @Default(false) bool isFullScreen,
    @Default(false) bool isInFavourite,
    @Default('') String videoPlayingId,
    @Default(0) int userLearningTime,
    VideoPlayerController? courseVideo,
  }) = _CourseDetailsState;
}
