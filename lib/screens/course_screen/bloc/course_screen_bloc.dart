import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';

import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';

import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class CourseScreenBloc extends Bloc<CourseScreenEvent, CourseScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  // final courseRepo = locator<CourseRepository>();
  final CategoryRepository categoryRepository;
  final CourseItemRepository courseItemRepository;

  CourseScreenBloc({
    required this.categoryRepository,
    required this.courseItemRepository,
  }) : super(const CourseScreenState()) {
    on<LoadCourseBasicInfoEvent>(_loadCourseList);
    on<GetSearchedByTextCoursesEvent>(_getSearchedCourses);
    on<EnterTextOnCourseScreenEvent>(_onEnterText);
    on<SelectCategoryOnCoursesEvent>(_onSelectCategory);
    on<SelectFilterOnCourseScreenEvent>(_onSelectFilter);
  }

  Future<void> _loadCourseList(

      LoadCourseBasicInfoEvent event,
      Emitter<CourseScreenState> emit,
      ) async {
    if (state.isLoadingNext && !event.refresh) return;

    final isFirstLoad = event.refresh;

    if (!isFirstLoad) {
      emit(state.copyWith(isLoadingNext: true));
    }

    try {
      final nextPage = isFirstLoad ? 1 : state.page + 1;

      final newCourses = await courseItemRepository.getCoursesOnCourseScreen(
        filter: state.selectedCourseFilter,
        page: nextPage,
        pageSize: state.pageSize,
      );

      final combinedCourses = isFirstLoad
          ? newCourses
          : [...state.courseList, ...newCourses];

      final reachedEnd = newCourses.length < state.pageSize;

      final categories = isFirstLoad
          ? await categoryRepository.getCategories()
          : state.categoriesList;

      emit(state.copyWith(

        loadingStatus: CourseScreenStatus.loaded,
        courseList: combinedCourses,
        categoriesList: categories,
        page: nextPage,
        isLoadingNext: false,
        hasReachedEnd: reachedEnd,
      ));
    } catch (e) {
      emit(state.copyWith(isLoadingNext: false));
      rethrow;
    }
  }

  Future<void> _getSearchedCourses(
    GetSearchedByTextCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final searchedCourses = await strapiApiService.searchCoursesByText(
        enteredText: state.enteredText,
      );

      emit(
        state.copyWith(
          loadingStatus: CourseScreenStatus.loaded,
          courseList: searchedCourses,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  void _onEnterText(
    EnterTextOnCourseScreenEvent event,
    Emitter<CourseScreenState> emit,
  ) {
    emit(
      state.copyWith(
        enteredText: event.enteredText,
      ),
    );
  }

  void _onSelectCategory(
    SelectCategoryOnCoursesEvent event,
    Emitter<CourseScreenState> emit,
  ) {
    final chosenCategory = state.categoriesList.firstWhere(
      (category) => category.id == event.categoryId,
    );

    emit(
      state.copyWith(
        courseList: chosenCategory.courseVideoItems,
      ),
    );
  }

  void _onSelectFilter(
    SelectFilterOnCourseScreenEvent event,
    Emitter<CourseScreenState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCourseFilter: event.filter,
      ),
    );

    add(
      const LoadCourseBasicInfoEvent(
        refresh: true,
      ),
    );
  }
}
