import 'package:bloc/bloc.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_event.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final UserRepository userRepository;

  AccountBloc({
    required this.userRepository,
  }) : super(AccountState()) {
    on<GetUserDataEvent>(_getUserData);
  }

  Future<void> _getUserData(
    GetUserDataEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      final userData = await userRepository.getUserData();

      emit(
        state.copyWith(
          userData: userData,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
