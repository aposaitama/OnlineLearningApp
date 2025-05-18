import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/user_model/user_model.dart';

part 'home_screen_bloc_state.freezed.dart';

enum HomeScreenStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    UserModel? userInfo,
    @Default(HomeScreenStatus.initial) HomeScreenStatus loadingStatus,
    @Default([]) List<int> courseIds,
  }) = _HomeScreenState;
}
