import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_event.freezed.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.registerUser(
    String userName,
    String email,
    String password,
  ) = RegisterUserBlocEvent;
  const factory AuthBlocEvent.loginUser(String email, String password) =
      LoginUserBlocEvent;
}
