import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';

import 'filters_event.dart';
import 'filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  final CategoryRepository categoryRepository;

  FiltersBloc({
    required this.categoryRepository,
  }) : super(FiltersState()) {
    on<SelectPriceRangeEvent>(_onSelectPriceRange);
    on<SelectCategoriesEvent>(_onSelectCategory);
    on<SelectDurationEvent>(_onSelectDuration);
    on<ClearFiltersStateEvent>(_onClearState);
    on<GetCategoriesOnFiltersEvent>(_onGetCategories);
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
    final List<CategoriesModel> currentCategories =
        List<CategoriesModel>.from(state.selectedCategories);

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

  Future<void> _onGetCategories(
    GetCategoriesOnFiltersEvent event,
    Emitter<FiltersState> emit,
  ) async {
    try {
      final categories = await categoryRepository.getCategories();

      emit(
        state.copyWith(
          categories: categories,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
