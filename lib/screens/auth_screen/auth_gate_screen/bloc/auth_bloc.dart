import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class AuthGateBloc extends Bloc<AuthGateBlocEvent, AuthGateBlocState> {
  final strapiApiService = locator<StrapiApiService>();

  AuthGateBloc() : super(const AuthGateBlocState()) {
    on<CheckRequestedAuthBlocEvent>(_checkRequested);

    on<LogoutRequestedAuthBlocEvent>(_logoutRequested);
  }

  Future<void> _checkRequested(
    CheckRequestedAuthBlocEvent event,
    Emitter<AuthGateBlocState> emit,
  ) async {
    final token = await strapiApiService.getToken();
    if (token != null) {
      emit(state.copyWith(gateStatus: AuthGateStatus.authenticated));
    } else {
      emit(state.copyWith(gateStatus: AuthGateStatus.unAuthenticated));
    }
  }

  Future<void> _logoutRequested(
    LogoutRequestedAuthBlocEvent event,
    Emitter<AuthGateBlocState> emit,
  ) async {}
}
