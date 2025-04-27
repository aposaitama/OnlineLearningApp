import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_event.freezed.dart';

@freezed
class SearchScreenEvent with _$SearchScreenEvent{
  factory SearchScreenEvent.loadSearchedCourses({
    required List<String> categories,
    required List<RangeValues> durations,
    required RangeValues priceRange,
}) = GetSearchedCoursesEvent;
}