import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_screen_event.freezed.dart';

@freezed
class CourseScreenEvent with _$CourseScreenEvent {
  const factory CourseScreenEvent.loadCourseList() = LoadCourseBasicInfoEvent;

  const factory CourseScreenEvent.getCoursesByText() =
      GetSearchedByTextCoursesEvent;

  const factory CourseScreenEvent.enterText({
    String? enteredText,
  }) = EnterTextOnCourseScreenEvent;
}
