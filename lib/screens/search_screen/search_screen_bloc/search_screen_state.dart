import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';

part 'search_screen_state.freezed.dart';

enum SearchListStatus {
  initial,
  loading,
  successful,
  error,
}

@freezed
class SearchScreenState with _$SearchScreenState {
  factory SearchScreenState({
    @Default([]) List<CourseBasicModel> coursesList,
    @Default(SearchListStatus.initial) SearchListStatus coursesListStatus,
    String? searchText,
    String? errorMessage,
    @Default(1) int page,
    @Default(10) int pageSize,
    @Default(false) bool hasReachedEnd,
}) = _SearchScreenState;
}