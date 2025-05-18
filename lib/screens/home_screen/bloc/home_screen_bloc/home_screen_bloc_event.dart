import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_bloc_event.freezed.dart';

@freezed
class HomeScreenBlocEvent with _$HomeScreenBlocEvent {
  const factory HomeScreenBlocEvent.loadUserData() =
      LoadUserHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.getCourseIds() = GetCourseIdsEvent;

  const factory HomeScreenBlocEvent.checkCourseIds() = CheckCourseIdsEvent;
}
