import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

enum RegisterStatus { initial, successfull, failed }

enum LoginStatus { initial, loading, successfull, failed }

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    @Default(LoginStatus.initial) LoginStatus loginStatus,

    @Default('') String errorMessage,
  }) = _AuthBlocState;
}
