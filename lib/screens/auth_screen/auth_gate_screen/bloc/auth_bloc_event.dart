import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_event.freezed.dart';

@freezed
class AuthGateBlocEvent with _$AuthGateBlocEvent {
  const factory AuthGateBlocEvent.checkRequested() =
      CheckRequestedAuthBlocEvent;
  const factory AuthGateBlocEvent.logoutRequested() =
      LogoutRequestedAuthBlocEvent;
  const factory AuthGateBlocEvent.checkIfAllDataEntered() = CheckIfAllUserDataEntered;
}
