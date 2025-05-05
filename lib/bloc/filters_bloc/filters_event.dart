import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/categories_model/categories_model.dart';

part 'filters_event.freezed.dart';

@freezed
class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.selectPriceRange({
    required RangeValues priceRange,
  }) = SelectPriceRangeEvent;

  const factory FiltersEvent.selectCategories({
    required CategoriesModel category,
  }) = SelectCategoriesEvent;

  const factory FiltersEvent.selectDurations({
    required RangeValues duration,
  }) = SelectDurationEvent;

  const factory FiltersEvent.clearFiltersState() = ClearFiltersStateEvent;

  const factory FiltersEvent.getCategories() = GetCategoriesOnFiltersEvent;
}
