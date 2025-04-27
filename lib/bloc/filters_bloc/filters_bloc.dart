import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'filters_event.dart';
import 'filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc() : super(FiltersState()) {
    on<SelectPriceRangeEvent>(_onSelectPriceRange);
    on<SelectCategoriesEvent>(_onSelectCategory);
    on<SelectDurationEvent>(_onSelectDuration);
    on<ClearFiltersStateEvent>(_onClearState);
  }

  void _onSelectPriceRange(
    SelectPriceRangeEvent event,
    Emitter<FiltersState> emit,
  ) {
    emit(
      state.copyWith(
        priceRange: event.priceRange,
      ),
    );
  }

  void _onSelectCategory(
    SelectCategoriesEvent event,
    Emitter<FiltersState> emit,
  ) {
    final List<String> currentCategories =
        List<String>.from(state.selectedCategories);

    if (currentCategories.contains(event.category)) {
      currentCategories.remove(event.category);
    } else {
      currentCategories.add(event.category);
    }

    emit(
      state.copyWith(
        selectedCategories: currentCategories,
      ),
    );
  }

  void _onSelectDuration(
    SelectDurationEvent event,
    Emitter<FiltersState> emit,
  ) {
    final List<RangeValues> currentDurations =
        List<RangeValues>.from(state.selectedDurations);

    if (currentDurations.contains(event.duration)) {
      currentDurations.remove(event.duration);
    } else {
      currentDurations.add(event.duration);
    }

    emit(
      state.copyWith(
        selectedDurations: currentDurations,
      ),
    );
  }

  void _onClearState(
    ClearFiltersStateEvent event,
    Emitter<FiltersState> emit,
  ) {
    emit(
      FiltersState(),
    );
  }
}
