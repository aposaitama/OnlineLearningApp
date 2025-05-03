import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/categories_model/categories_model.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';

part 'course_screen_state.freezed.dart';

enum CourseScreenStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class CourseScreenState with _$CourseScreenState {
  const factory CourseScreenState({
    @Default([]) List<CourseBasicModel> courseList,
    @Default([]) List<CategoriesModel> categoriesList,
    @Default(CourseScreenStatus.initial) CourseScreenStatus loadingStatus,
    String? enteredText,
    // @Default([]) List<CategoriesModel> categories,
  }) = _CourseScreenState;
}
