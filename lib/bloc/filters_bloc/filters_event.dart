import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_event.freezed.dart';

@freezed
class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.selectPriceRange({
    required RangeValues priceRange,
  }) = SelectPriceRangeEvent;

  const factory FiltersEvent.selectCategories({
    required String category,
  }) = SelectCategoriesEvent;

  const factory FiltersEvent.selectDurations({
    required RangeValues duration,
  }) = SelectDurationEvent;

  const factory FiltersEvent.clearFiltersState() = ClearFiltersStateEvent;
}
