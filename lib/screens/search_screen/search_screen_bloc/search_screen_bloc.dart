import 'package:bloc/bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_event.dart';
import 'package:online_app/screens/search_screen/search_screen_bloc/search_screen_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';

import '../../../models/course_basic_model/course_basic_model.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  final strapiApiService = locator<StrapiApiService>();

  SearchScreenBloc()
      : super(
          SearchScreenState(),
        ) {
    on<GetSearchedCoursesEvent>(_onGetSearchedCourses);
    on<EnterSearchTextEvent>(_onEnterText);
    on<ClearSearchStateEvent>(_onClearState);
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
          await strapiApiService.filterCourses(
        categories: event.categories,
        searchedText: state.searchText,
      );

      final List<CourseBasicModel> filteredCourses = result.where(
        (course) {
          final durationInHours = course.totalCourseDurationInSeconds.toHours();

          final matchesDuration = event.durations.isEmpty ||
              event.durations.any(
                (duration) =>
                    durationInHours >= duration.start &&
                    durationInHours <= duration.end,
              );

          final matchesPrice = course.coursePrice >= event.priceRange.start &&
              course.coursePrice <= event.priceRange.end;

          return matchesDuration && matchesPrice;
        },
      ).toList();

      if (filteredCourses.isEmpty) {
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
          coursesList: filteredCourses,
          coursesListStatus: SearchListStatus.successful,
        ),
      );
    } catch (e) {
      rethrow;
    }
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
