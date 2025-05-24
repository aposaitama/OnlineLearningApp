import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

enum AuthGateStatus { initial, authenticated, unAuthenticated }

enum AllDataEntered { initial, entered, notEntered}

@freezed
class AuthGateBlocState with _$AuthGateBlocState {
  const factory AuthGateBlocState({
    @Default(AuthGateStatus.initial) AuthGateStatus gateStatus,
    @Default(AllDataEntered.initial) AllDataEntered dataEnteredStatus,
  }) = _AuthGateBlocState;
}
