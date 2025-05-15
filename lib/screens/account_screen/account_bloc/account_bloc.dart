import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/auth_repository/auth_repository.dart';
import 'package:online_app/repositories/user_repository/user_repository.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_event.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final UserRepository userRepository;
  final authRepo = locator<AuthRepository>();

  AccountBloc({
    required this.userRepository,
  }) : super(AccountState()) {
    on<GetUserDataEvent>(_getUserData);
    on<PickNewAvatarEvent>(_onPickImage);
    on<EditUserDataEvent>(_onEditUserData);
    on<EnterNewUsernameEvent>(_enterUsername);
    on<ClearAccountStateEvent>(_clearState);
    on<LogoutUserEvent>(_logoutUser);
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

  Future<void> _logoutUser(
    LogoutUserEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      await authRepo.logout();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onPickImage(
    PickNewAvatarEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      final permissionStatus = await Permission.photos.request();
      // final mediaLibraryStatus = await Permission.mediaLibrary.request();
      final picker = ImagePicker();
      if (permissionStatus.isGranted) {
        final pickedImage = await picker.pickImage(source: ImageSource.gallery);

        if (pickedImage != null) {
          final appDir = await getApplicationDocumentsDirectory();

          final String newPath = '${appDir.path}${pickedImage.name}';

          final File newFile = await File(pickedImage.path).copy(newPath);

          emit(
            state.copyWith(
              newAvatarPath: newFile.path,
            ),
          );
        }
      } else {
        openAppSettings();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _onEditUserData(
    EditUserDataEvent event,
    Emitter<AccountState> emit,
  ) async {
    try {
      await userRepository.editUserData(
        avatarPath: state.newAvatarPath,
        username: state.newUsername,
      );

      add(
        const GetUserDataEvent(),
      );
    } catch (e) {
      rethrow;
    }
  }

  void _enterUsername(
    EnterNewUsernameEvent event,
    Emitter<AccountState> emit,
  ) {
    emit(
      state.copyWith(
        newUsername: event.newUsername,
      ),
    );
  }

  void _clearState(
    ClearAccountStateEvent event,
    Emitter<AccountState> emit,
  ) {
    emit(
      state.copyWith(
        newUsername: null,
        newAvatarPath: null,
      ),
    );
  }
}
