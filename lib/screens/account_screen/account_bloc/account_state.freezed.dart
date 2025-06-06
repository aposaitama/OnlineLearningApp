// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  UserModel? get userData => throw _privateConstructorUsedError;
  String? get newAvatarPath => throw _privateConstructorUsedError;
  String? get newUsername => throw _privateConstructorUsedError;
  bool get enableNotifications => throw _privateConstructorUsedError;
  bool get enableNotificationsSound => throw _privateConstructorUsedError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {UserModel? userData,
      String? newAvatarPath,
      String? newUsername,
      bool enableNotifications,
      bool enableNotificationsSound});

  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? newAvatarPath = freezed,
    Object? newUsername = freezed,
    Object? enableNotifications = null,
    Object? enableNotificationsSound = null,
  }) {
    return _then(_value.copyWith(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      newAvatarPath: freezed == newAvatarPath
          ? _value.newAvatarPath
          : newAvatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      newUsername: freezed == newUsername
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      enableNotifications: null == enableNotifications
          ? _value.enableNotifications
          : enableNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      enableNotificationsSound: null == enableNotificationsSound
          ? _value.enableNotificationsSound
          : enableNotificationsSound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? userData,
      String? newAvatarPath,
      String? newUsername,
      bool enableNotifications,
      bool enableNotificationsSound});

  @override
  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = freezed,
    Object? newAvatarPath = freezed,
    Object? newUsername = freezed,
    Object? enableNotifications = null,
    Object? enableNotificationsSound = null,
  }) {
    return _then(_$AccountStateImpl(
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      newAvatarPath: freezed == newAvatarPath
          ? _value.newAvatarPath
          : newAvatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      newUsername: freezed == newUsername
          ? _value.newUsername
          : newUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      enableNotifications: null == enableNotifications
          ? _value.enableNotifications
          : enableNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      enableNotificationsSound: null == enableNotificationsSound
          ? _value.enableNotificationsSound
          : enableNotificationsSound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  _$AccountStateImpl(
      {this.userData,
      this.newAvatarPath,
      this.newUsername,
      this.enableNotifications = true,
      this.enableNotificationsSound = true});

  @override
  final UserModel? userData;
  @override
  final String? newAvatarPath;
  @override
  final String? newUsername;
  @override
  @JsonKey()
  final bool enableNotifications;
  @override
  @JsonKey()
  final bool enableNotificationsSound;

  @override
  String toString() {
    return 'AccountState(userData: $userData, newAvatarPath: $newAvatarPath, newUsername: $newUsername, enableNotifications: $enableNotifications, enableNotificationsSound: $enableNotificationsSound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.newAvatarPath, newAvatarPath) ||
                other.newAvatarPath == newAvatarPath) &&
            (identical(other.newUsername, newUsername) ||
                other.newUsername == newUsername) &&
            (identical(other.enableNotifications, enableNotifications) ||
                other.enableNotifications == enableNotifications) &&
            (identical(
                    other.enableNotificationsSound, enableNotificationsSound) ||
                other.enableNotificationsSound == enableNotificationsSound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, newAvatarPath,
      newUsername, enableNotifications, enableNotificationsSound);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  factory _AccountState(
      {final UserModel? userData,
      final String? newAvatarPath,
      final String? newUsername,
      final bool enableNotifications,
      final bool enableNotificationsSound}) = _$AccountStateImpl;

  @override
  UserModel? get userData;
  @override
  String? get newAvatarPath;
  @override
  String? get newUsername;
  @override
  bool get enableNotifications;
  @override
  bool get enableNotificationsSound;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
