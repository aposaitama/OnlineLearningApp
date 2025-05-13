import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';

part 'favourites_state.freezed.dart';

@freezed
class FavouritesState with _$FavouritesState {
  factory FavouritesState({
    @Default([]) List<CourseBasicModel> favouriteCourses,
}) = _FavouritesState;
}