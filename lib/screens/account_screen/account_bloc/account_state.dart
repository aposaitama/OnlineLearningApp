import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user_model/user_model.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({
    UserModel? userData,
    String? newAvatarPath,
    String? newUsername,
    @Default(true) bool enableNotifications,
    @Default(true) bool enableNotificationsSound,
  }) = _AccountState;
}
