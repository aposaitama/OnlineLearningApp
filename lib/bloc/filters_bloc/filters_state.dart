import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/categories_model/categories_model.dart';

part 'filters_state.freezed.dart';

@freezed
class FiltersState with _$FiltersState {
  factory FiltersState({
    @Default(RangeValues(0, 400)) RangeValues priceRange,
    @Default([]) List<CategoriesModel> selectedCategories,
    @Default([]) List<RangeValues> selectedDurations,
    @Default([]) List<CategoriesModel> categories,
}) = _FiltersState;
}