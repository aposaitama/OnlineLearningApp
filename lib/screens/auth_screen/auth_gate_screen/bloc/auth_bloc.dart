import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

class AuthGateBloc extends Bloc<AuthGateBlocEvent, AuthGateBlocState> {
  final strapiApiService = locator<StrapiApiService>();
  final _auth = locator<AuthRepository>();
  final _userRepo = locator<UserRepository>();

  AuthGateBloc() : super(const AuthGateBlocState()) {
    on<CheckRequestedAuthBlocEvent>(_checkRequested);

    on<LogoutRequestedAuthBlocEvent>(_logoutRequested);
    on<CheckIfAllUserDataEntered>(_checkIfAllUserDataEntered);
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

  Future<void> _checkIfAllUserDataEntered(
    CheckIfAllUserDataEntered event,
    Emitter<AuthGateBlocState> emit,
  ) async {
    final UserModel? user = await _userRepo.getUserData();

    if(user == null) {
      emit(
        state.copyWith(
          dataEnteredStatus: AllDataEntered.notEntered,
        ),
      );
      return;
    }

    if (user.userPhoneNumber != null && user.paymentPassword != null) {
      emit(
        state.copyWith(dataEnteredStatus: AllDataEntered.entered),
      );
    } else if(user.userPhoneNumber != null && user.paymentPassword == null){
      emit(
        state.copyWith(
          dataEnteredStatus: AllDataEntered.onlyPhoneEntered,
        ),
      );
    } else{
      emit(
        state.copyWith(
          dataEnteredStatus: AllDataEntered.notEntered,
        ),
      );
    }
  }
}
