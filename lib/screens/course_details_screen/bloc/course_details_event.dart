import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_event.freezed.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {
  const factory CourseDetailsEvent.loadCourseInfo(
    String documentID,
  ) = LoadConcreteCourseInfoEvent;

  const factory CourseDetailsEvent.loadCourseVideo(
    String videoUrl,
    String videoPlayingId,
  ) = LoadCourseVideoEvent;
  const factory CourseDetailsEvent.playVideo(String videoPlayingId) =
      PlayVideoEvent;
  const factory CourseDetailsEvent.pauseVideo() = PauseVideoEvent;
  const factory CourseDetailsEvent.resumeVideo() = ResumeVideoEvent;
  const factory CourseDetailsEvent.closeVideo() = CloseVideoEvent;
  const factory CourseDetailsEvent.finishedVideo() = FinishedVideoEvent;
  const factory CourseDetailsEvent.fullScreen() = FullScreenEvent;
  const factory CourseDetailsEvent.toogleFavourite(String documentId) =
      ToogleFavouriteEvent;
  const factory CourseDetailsEvent.startTimer() = StartTimerEvent;
  const factory CourseDetailsEvent.addTickTimer() = AddTickTimerEvent;
  const factory CourseDetailsEvent.closeTimer() = CloseTimerEvent;
  const factory CourseDetailsEvent.testFinishedVideo() = TestFinishedVideo;
}
