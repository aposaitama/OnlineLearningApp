import 'package:bloc/bloc.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(const AuthBlocState()) {
    on<RegisterUserBlocEvent>(
      _registerUser,
    );
    on<LoginUserBlocEvent>(
      _loginUser,
    );
  }

  Future<void> _loginUser(
    LoginUserBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        loginStatus: LoginStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      emit(
        state.copyWith(
          loginStatus: LoginStatus.loading,
        ),
      );
      await StrapiApiService().login(
        event.email,
        event.password,
      );
      emit(
        state.copyWith(
          loginStatus: LoginStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loginStatus: LoginStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _registerUser(
    RegisterUserBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: RegisterStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      await StrapiApiService().register(
        event.userName,
        event.email,
        event.password,
      );
      emit(
        state.copyWith(
          status: RegisterStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: RegisterStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // Future<void> _logOut(
  //   LogOutRegisterScreenBlocEvent event,
  //   Emitter<RegisterScreenBlocState> emit,
  // ) async {
  //   _auth.signOut();
  //   emit(
  //     state.copyWith(
  //       status: RegisterStatus.initial,
  //     ),
  //   );
  // }
}
