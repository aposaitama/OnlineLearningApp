import 'package:bloc/bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_event.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

import '../../../models/course_basic_model/course_basic_model.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  final strapiApiService = locator<StrapiApiService>();
  final CourseItemRepository courseItemRepository;

  SearchScreenBloc({required this.courseItemRepository})
      : super(
          SearchScreenState(),
        ) {
    on<GetSearchedCoursesEvent>(_onGetSearchedCourses);
    on<EnterSearchTextEvent>(_onEnterText);
    on<ClearSearchStateEvent>(_onClearState);
    on<LoadNextSearchedCourses>(_onLoadNext);
  }

  Future<void> _onGetSearchedCourses(
    GetSearchedCoursesEvent event,
    Emitter<SearchScreenState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          coursesListStatus: SearchListStatus.loading,
        ),
      );

      final List<CourseBasicModel> result =
          await courseItemRepository.getFilteredCourses(
        selectedCategories: event.categories,
        selectedDurations: event.durations,
        price: event.priceRange,
        enteredText: state.searchText,
        page: 1,
        pageSize: 10,
      );

      if (result.isEmpty) {
        emit(
          state.copyWith(
            coursesListStatus: SearchListStatus.initial,
            coursesList: [],
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          coursesList: result,
          coursesListStatus: SearchListStatus.successful,
          page: 1,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onLoadNext(
    LoadNextSearchedCourses event,
    Emitter<SearchScreenState> emit,
  ) async {
    final nextPage = state.page + 1;

    final moreCourses = await courseItemRepository.getFilteredCourses(
      selectedCategories: event.categories,
      selectedDurations: event.durations,
      price: event.priceRange,
      enteredText: state.searchText,
      page: nextPage,
      pageSize: state.pageSize,
    );

    final combinedCourses = [
      ...state.coursesList,
      ...moreCourses,
    ];

    final uniqueCourses = {
      for(var course in combinedCourses) course.id: course,
    }.values.toList();

    final reachedEnd = uniqueCourses.length == state.coursesList.length;

    emit(
      state.copyWith(
        coursesList: uniqueCourses,
        hasReachedEnd: reachedEnd,
        page: nextPage,
      ),
    );
  }

  void _onEnterText(
    EnterSearchTextEvent event,
    Emitter<SearchScreenState> emit,
  ) {
    emit(
      state.copyWith(
        searchText: event.enteredText,
      ),
    );
  }

  void _onClearState(
    ClearSearchStateEvent event,
    Emitter<SearchScreenState> emit,
  ) {
    emit(
      SearchScreenState(),
    );
  }
}
