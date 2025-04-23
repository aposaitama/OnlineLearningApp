import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_event.freezed.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {
  const factory CourseDetailsEvent.loadCourseInfo(
    String documentID,
  ) = LoadConcreteCourseInfoEvent;
}
