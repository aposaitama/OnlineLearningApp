import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_state.freezed.dart';

@freezed
class FiltersState with _$FiltersState {
  factory FiltersState({
    @Default(RangeValues(0, 400)) RangeValues priceRange,
    @Default([]) List<String> selectedCategories,
    @Default([]) List<RangeValues> selectedDurations,
}) = _FiltersState;
}