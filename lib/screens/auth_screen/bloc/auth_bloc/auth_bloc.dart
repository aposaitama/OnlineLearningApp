import 'package:bloc/bloc.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_state.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(const AuthBlocState()) {
    on<RegisterUserBlocEvent>(_registerUser);
  }

  Future<void> _registerUser(
    RegisterUserBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    emit(state.copyWith(status: RegisterStatus.initial));
    try {
      await StrapiApiService().register(
        event.userName,
        event.email,
        event.password,
      );
      emit(state.copyWith(status: RegisterStatus.successfull));
    } catch (e) {
      emit(state.copyWith(status: RegisterStatus.failed));
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
