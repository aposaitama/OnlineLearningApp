import 'package:bloc/bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final _auth = locator<AuthRepository>();
  final _userRepo = locator<UserRepository>();

  AuthBloc() : super(const AuthBlocState()) {
    on<RegisterUserBlocEvent>(_registerUser);
    on<LoginUserBlocEvent>(_loginUser);
    on<ConnectPhoneNumEvent>(_connectPhoneNum);
    on<ConnectPaymentPassEvent>(_connectPaymentPass);
    on<EnterUsernameEvent>(_enterUsername);
    on<EnterEmailEvent>(_enterEmail);
    on<EnterPasswordEvent>(_enterPassword);
    on<EnterPhoneNumberEvent>(_enterPhoneNumber);
    on<EnterPaymentPasswordEvent>(_enterPaymentPassword);
  }

  Future<void> _connectPhoneNum(
    ConnectPhoneNumEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    try {
      final response = await _userRepo.updateUserPhoneNumber(
        event.phoneNum,
      );
      response
          ? emit(
              state.copyWith(
                phoneNumberConnectingStatus:
                    PhoneNumberConnectingStatus.successfull,
              ),
            )
          : emit(
              state.copyWith(
                phoneNumberConnectingStatus: PhoneNumberConnectingStatus.failed,
              ),
            );
      emit(
        state.copyWith(
          phoneNumberConnectingStatus: PhoneNumberConnectingStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          phoneNumberConnectingStatus: PhoneNumberConnectingStatus.failed,
        ),
      );
    }
  }

  Future<void> _connectPaymentPass(
    ConnectPaymentPassEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    try {
      final response = await _userRepo.updateUserPaymentPassword(
        event.paymentPassword,
      );
      response
          ? emit(
              state.copyWith(
                paymentPasswordConnectingStatus:
                    PaymentPasswordConnectingStatus.successfull,
              ),
            )
          : emit(
              state.copyWith(
                paymentPasswordConnectingStatus:
                    PaymentPasswordConnectingStatus.failed,
              ),
            );
      emit(
        state.copyWith(
          paymentPasswordConnectingStatus:
              PaymentPasswordConnectingStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          paymentPasswordConnectingStatus:
              PaymentPasswordConnectingStatus.failed,
        ),
      );
    }
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
      await _auth.login(
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
      if (state.username != null &&
          state.email != null &&
          state.password != null &&
          state.phoneNumber != null &&
          state.paymentPassword != null) {
        await _auth.register(
          userName: state.username!,
          email: state.email!,
          password: state.password!,
        );

        await _userRepo.updatePaymentPasswordAndPhoneNumber(
          phoneNumber: state.phoneNumber!,
          paymentPassword: state.paymentPassword!,
        );
        emit(
          state.copyWith(
            status: RegisterStatus.successfull,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: RegisterStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _enterUsername(
    EnterUsernameEvent event,
    Emitter<AuthBlocState> emit,
  ) {
    emit(
      state.copyWith(
        username: event.username,
      ),
    );
  }

  void _enterEmail(
    EnterEmailEvent event,
    Emitter<AuthBlocState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _enterPassword(
    EnterPasswordEvent event,
    Emitter<AuthBlocState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _enterPhoneNumber(
    EnterPhoneNumberEvent event,
    Emitter<AuthBlocState> emit,
  ) {
    emit(
      state.copyWith(
        phoneNumber: event.phoneNumber,
      ),
    );
  }

  void _enterPaymentPassword(
    EnterPaymentPasswordEvent event,
    Emitter<AuthBlocState> emit,
  ) {
    emit(
      state.copyWith(
        paymentPassword: event.paymentPassword,
      ),
    );
  }
}
