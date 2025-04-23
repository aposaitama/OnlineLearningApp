import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';

part 'course_details_state.freezed.dart';

enum CourseDetailsLoadingStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState({
    CourseConcreteModel? course,
    @Default(CourseDetailsLoadingStatus.initial)
    CourseDetailsLoadingStatus loadingStatus,
  }) = _CourseDetailsState;
}
