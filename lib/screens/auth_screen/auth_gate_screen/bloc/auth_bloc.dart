import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

class AuthGateBloc extends Bloc<AuthGateBlocEvent, AuthGateBlocState> {
  final strapiApiService = locator<StrapiApiService>();
  final _auth = locator<AuthRepository>();
  AuthGateBloc() : super(const AuthGateBlocState()) {
    on<CheckRequestedAuthBlocEvent>(_checkRequested);

    on<LogoutRequestedAuthBlocEvent>(_logoutRequested);
  }

  Future<void> _checkRequested(
    CheckRequestedAuthBlocEvent event,
    Emitter<AuthGateBlocState> emit,
  ) async {
    final token = await _auth.getToken();
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
