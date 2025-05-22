import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

enum RegisterStatus { initial, successfull, failed }

enum PhoneNumberConnectingStatus { initial, successfull, failed }

enum PaymentPasswordConnectingStatus { initial, successfull, failed }

enum EnterUsernameEmailPasswordStatus {
  initial,
  successful,
  failed,
}

enum LoginStatus { initial, loading, successfull, failed }

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    @Default(EnterUsernameEmailPasswordStatus.initial)
    EnterUsernameEmailPasswordStatus enterUsernameEmailPasswordStatus,
    @Default(PhoneNumberConnectingStatus.initial)
    PhoneNumberConnectingStatus phoneNumberConnectingStatus,
    @Default(PaymentPasswordConnectingStatus.initial)
    PaymentPasswordConnectingStatus paymentPasswordConnectingStatus,
    @Default('') String errorMessage,
    String? username,
    String? email,
    String? password,
    String? phoneNumber,
    String? paymentPassword,
  }) = _AuthBlocState;
}
