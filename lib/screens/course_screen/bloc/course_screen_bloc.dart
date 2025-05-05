import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/category_repository/category_repository.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_event.dart';
import 'package:online_app/screens/course_screen/bloc/course_screen_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class CourseScreenBloc extends Bloc<CourseScreenEvent, CourseScreenState> {
  final strapiApiService = locator<StrapiApiService>();
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
    on<LoadNextCourseListEvent>(_loadNext);
  }

  Future<void> _loadCourseList(
    LoadCourseBasicInfoEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    final courseItems = await courseItemRepository.getCoursesOnCourseScreen(
      filter: state.selectedCourseFilter,
      page: 1,
      pageSize: state.pageSize,
    );

    final categories = await categoryRepository.getCategories();

    emit(
      state.copyWith(
        loadingStatus: CourseScreenStatus.loaded,
        courseList: courseItems,
        categoriesList: categories,
      ),
    );
  }

  Future<void> _loadNext(
    LoadNextCourseListEvent event,
    Emitter<CourseScreenState> emit,
  ) async {
    try {
      final nextPage = state.page + 1;

      final moreCourses = await courseItemRepository.getCoursesOnCourseScreen(
        filter: state.selectedCourseFilter,
        page: nextPage,
        pageSize: state.pageSize,
      );

      final combinedCourses = [
        ...state.courseList,
        ...moreCourses,
      ];

      final uniqueCourses = {
        for (var course in combinedCourses) course.id: course,
      }.values.toList();

      final reachedEnd = uniqueCourses.length == state.courseList.length;

      emit(
        state.copyWith(
          courseList: uniqueCourses,
          page: nextPage,
          loadingStatus: CourseScreenStatus.loaded,
          hasReachedEnd: reachedEnd,
        ),
      );
    } catch (e) {
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
      const LoadCourseBasicInfoEvent(),
    );
  }
}
