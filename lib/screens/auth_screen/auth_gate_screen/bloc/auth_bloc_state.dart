import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

enum AuthGateStatus { initial, authenticated, unAuthenticated }

@freezed
class AuthGateBlocState with _$AuthGateBlocState {
  const factory AuthGateBlocState({
    @Default(AuthGateStatus.initial) AuthGateStatus gateStatus,
  }) = _AuthGateBlocState;
}
