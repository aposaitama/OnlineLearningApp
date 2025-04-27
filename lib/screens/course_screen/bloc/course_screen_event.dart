import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_screen_event.freezed.dart';

@freezed
class CourseScreenEvent with _$CourseScreenEvent {
  const factory CourseScreenEvent.loadCourseList() = LoadCourseBasicInfoEvent;

  const factory CourseScreenEvent.filterCourseList({
    required List<String> categories,
    required List<RangeValues> durations,
    required RangeValues priceRange,
}) = FilterCoursesEvent;
}
