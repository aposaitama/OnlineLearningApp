import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user_model/user_model.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({
    UserModel? userData,
  }) = _AccountState;
}
