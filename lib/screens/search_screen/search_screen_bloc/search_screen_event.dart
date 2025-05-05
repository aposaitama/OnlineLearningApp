import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/categories_model/categories_model.dart';

part 'search_screen_event.freezed.dart';

@freezed
class SearchScreenEvent with _$SearchScreenEvent {
  factory SearchScreenEvent.loadSearchedCourses({
    required List<CategoriesModel> categories,
    required List<RangeValues> durations,
    required RangeValues priceRange,
  }) = GetSearchedCoursesEvent;

  const factory SearchScreenEvent.enterText({
    String? enteredText,
  }) = EnterSearchTextEvent;

  const factory SearchScreenEvent.clearState() = ClearSearchStateEvent;

  const factory SearchScreenEvent.loadNextCourses({
    required List<CategoriesModel> categories,
    required List<RangeValues> durations,
    required RangeValues priceRange,
}) = LoadNextSearchedCourses;
}
