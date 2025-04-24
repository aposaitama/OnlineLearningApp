import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_event.freezed.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {
  const factory CourseDetailsEvent.loadCourseInfo(
    String documentID,
  ) = LoadConcreteCourseInfoEvent;
  const factory CourseDetailsEvent.loadCourseVideo(
    String videoUrl,
  ) = LoadCourseVideoEvent;
  const factory CourseDetailsEvent.playVideo() = PlayVideoEvent;
  const factory CourseDetailsEvent.pauseVideo() = PauseVideoEvent;
  const factory CourseDetailsEvent.resumeVideo() = ResumeVideoEvent;
  const factory CourseDetailsEvent.closeVideo() = CloseVideoEvent;
}
