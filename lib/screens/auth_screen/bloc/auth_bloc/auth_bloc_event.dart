import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_event.freezed.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.registerUser(
  ) = RegisterUserBlocEvent;

  const factory AuthBlocEvent.loginUser(String email, String password) =
      LoginUserBlocEvent;

  const factory AuthBlocEvent.connectPhoneNum(String phoneNum) =
      ConnectPhoneNumEvent;

  const factory AuthBlocEvent.connectPaymentPass(String paymentPassword) =
      ConnectPaymentPassEvent;

  const factory AuthBlocEvent.enterUsername({required String username}) =
      EnterUsernameEvent;

  const factory AuthBlocEvent.enterEmail({required String email}) =
      EnterEmailEvent;

  const factory AuthBlocEvent.enterPassword({required String password}) =
      EnterPasswordEvent;

  const factory AuthBlocEvent.enterPhoneNumber({required String phoneNumber}) =
      EnterPhoneNumberEvent;

  const factory AuthBlocEvent.enterPaymentPassword({required String paymentPassword}) =
      EnterPaymentPasswordEvent;
}
