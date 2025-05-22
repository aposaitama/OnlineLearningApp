// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res, $Val extends AuthBlocEvent>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterUserBlocEventImplCopyWith<$Res> {
  factory _$$RegisterUserBlocEventImplCopyWith(
          _$RegisterUserBlocEventImpl value,
          $Res Function(_$RegisterUserBlocEventImpl) then) =
      __$$RegisterUserBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterUserBlocEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$RegisterUserBlocEventImpl>
    implements _$$RegisterUserBlocEventImplCopyWith<$Res> {
  __$$RegisterUserBlocEventImplCopyWithImpl(_$RegisterUserBlocEventImpl _value,
      $Res Function(_$RegisterUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterUserBlocEventImpl implements RegisterUserBlocEvent {
  const _$RegisterUserBlocEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.registerUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return registerUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return registerUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUserBlocEvent implements AuthBlocEvent {
  const factory RegisterUserBlocEvent() = _$RegisterUserBlocEventImpl;
}

/// @nodoc
abstract class _$$LoginUserBlocEventImplCopyWith<$Res> {
  factory _$$LoginUserBlocEventImplCopyWith(_$LoginUserBlocEventImpl value,
          $Res Function(_$LoginUserBlocEventImpl) then) =
      __$$LoginUserBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginUserBlocEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$LoginUserBlocEventImpl>
    implements _$$LoginUserBlocEventImplCopyWith<$Res> {
  __$$LoginUserBlocEventImplCopyWithImpl(_$LoginUserBlocEventImpl _value,
      $Res Function(_$LoginUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginUserBlocEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserBlocEventImpl implements LoginUserBlocEvent {
  const _$LoginUserBlocEventImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserBlocEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserBlocEventImplCopyWith<_$LoginUserBlocEventImpl> get copyWith =>
      __$$LoginUserBlocEventImplCopyWithImpl<_$LoginUserBlocEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUserBlocEvent implements AuthBlocEvent {
  const factory LoginUserBlocEvent(final String email, final String password) =
      _$LoginUserBlocEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserBlocEventImplCopyWith<_$LoginUserBlocEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectPhoneNumEventImplCopyWith<$Res> {
  factory _$$ConnectPhoneNumEventImplCopyWith(_$ConnectPhoneNumEventImpl value,
          $Res Function(_$ConnectPhoneNumEventImpl) then) =
      __$$ConnectPhoneNumEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNum});
}

/// @nodoc
class __$$ConnectPhoneNumEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$ConnectPhoneNumEventImpl>
    implements _$$ConnectPhoneNumEventImplCopyWith<$Res> {
  __$$ConnectPhoneNumEventImplCopyWithImpl(_$ConnectPhoneNumEventImpl _value,
      $Res Function(_$ConnectPhoneNumEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNum = null,
  }) {
    return _then(_$ConnectPhoneNumEventImpl(
      null == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectPhoneNumEventImpl implements ConnectPhoneNumEvent {
  const _$ConnectPhoneNumEventImpl(this.phoneNum);

  @override
  final String phoneNum;

  @override
  String toString() {
    return 'AuthBlocEvent.connectPhoneNum(phoneNum: $phoneNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectPhoneNumEventImpl &&
            (identical(other.phoneNum, phoneNum) ||
                other.phoneNum == phoneNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNum);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectPhoneNumEventImplCopyWith<_$ConnectPhoneNumEventImpl>
      get copyWith =>
          __$$ConnectPhoneNumEventImplCopyWithImpl<_$ConnectPhoneNumEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return connectPhoneNum(phoneNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return connectPhoneNum?.call(phoneNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (connectPhoneNum != null) {
      return connectPhoneNum(phoneNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return connectPhoneNum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return connectPhoneNum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (connectPhoneNum != null) {
      return connectPhoneNum(this);
    }
    return orElse();
  }
}

abstract class ConnectPhoneNumEvent implements AuthBlocEvent {
  const factory ConnectPhoneNumEvent(final String phoneNum) =
      _$ConnectPhoneNumEventImpl;

  String get phoneNum;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectPhoneNumEventImplCopyWith<_$ConnectPhoneNumEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectPaymentPassEventImplCopyWith<$Res> {
  factory _$$ConnectPaymentPassEventImplCopyWith(
          _$ConnectPaymentPassEventImpl value,
          $Res Function(_$ConnectPaymentPassEventImpl) then) =
      __$$ConnectPaymentPassEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentPassword});
}

/// @nodoc
class __$$ConnectPaymentPassEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$ConnectPaymentPassEventImpl>
    implements _$$ConnectPaymentPassEventImplCopyWith<$Res> {
  __$$ConnectPaymentPassEventImplCopyWithImpl(
      _$ConnectPaymentPassEventImpl _value,
      $Res Function(_$ConnectPaymentPassEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentPassword = null,
  }) {
    return _then(_$ConnectPaymentPassEventImpl(
      null == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectPaymentPassEventImpl implements ConnectPaymentPassEvent {
  const _$ConnectPaymentPassEventImpl(this.paymentPassword);

  @override
  final String paymentPassword;

  @override
  String toString() {
    return 'AuthBlocEvent.connectPaymentPass(paymentPassword: $paymentPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectPaymentPassEventImpl &&
            (identical(other.paymentPassword, paymentPassword) ||
                other.paymentPassword == paymentPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentPassword);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectPaymentPassEventImplCopyWith<_$ConnectPaymentPassEventImpl>
      get copyWith => __$$ConnectPaymentPassEventImplCopyWithImpl<
          _$ConnectPaymentPassEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return connectPaymentPass(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return connectPaymentPass?.call(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (connectPaymentPass != null) {
      return connectPaymentPass(paymentPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return connectPaymentPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return connectPaymentPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (connectPaymentPass != null) {
      return connectPaymentPass(this);
    }
    return orElse();
  }
}

abstract class ConnectPaymentPassEvent implements AuthBlocEvent {
  const factory ConnectPaymentPassEvent(final String paymentPassword) =
      _$ConnectPaymentPassEventImpl;

  String get paymentPassword;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectPaymentPassEventImplCopyWith<_$ConnectPaymentPassEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterUsernameEventImplCopyWith<$Res> {
  factory _$$EnterUsernameEventImplCopyWith(_$EnterUsernameEventImpl value,
          $Res Function(_$EnterUsernameEventImpl) then) =
      __$$EnterUsernameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$EnterUsernameEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$EnterUsernameEventImpl>
    implements _$$EnterUsernameEventImplCopyWith<$Res> {
  __$$EnterUsernameEventImplCopyWithImpl(_$EnterUsernameEventImpl _value,
      $Res Function(_$EnterUsernameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$EnterUsernameEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterUsernameEventImpl implements EnterUsernameEvent {
  const _$EnterUsernameEventImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'AuthBlocEvent.enterUsername(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterUsernameEventImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterUsernameEventImplCopyWith<_$EnterUsernameEventImpl> get copyWith =>
      __$$EnterUsernameEventImplCopyWithImpl<_$EnterUsernameEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return enterUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return enterUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterUsername != null) {
      return enterUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return enterUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return enterUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterUsername != null) {
      return enterUsername(this);
    }
    return orElse();
  }
}

abstract class EnterUsernameEvent implements AuthBlocEvent {
  const factory EnterUsernameEvent({required final String username}) =
      _$EnterUsernameEventImpl;

  String get username;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterUsernameEventImplCopyWith<_$EnterUsernameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterEmailEventImplCopyWith<$Res> {
  factory _$$EnterEmailEventImplCopyWith(_$EnterEmailEventImpl value,
          $Res Function(_$EnterEmailEventImpl) then) =
      __$$EnterEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EnterEmailEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$EnterEmailEventImpl>
    implements _$$EnterEmailEventImplCopyWith<$Res> {
  __$$EnterEmailEventImplCopyWithImpl(
      _$EnterEmailEventImpl _value, $Res Function(_$EnterEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EnterEmailEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterEmailEventImpl implements EnterEmailEvent {
  const _$EnterEmailEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthBlocEvent.enterEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterEmailEventImplCopyWith<_$EnterEmailEventImpl> get copyWith =>
      __$$EnterEmailEventImplCopyWithImpl<_$EnterEmailEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return enterEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return enterEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterEmail != null) {
      return enterEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return enterEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return enterEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterEmail != null) {
      return enterEmail(this);
    }
    return orElse();
  }
}

abstract class EnterEmailEvent implements AuthBlocEvent {
  const factory EnterEmailEvent({required final String email}) =
      _$EnterEmailEventImpl;

  String get email;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterEmailEventImplCopyWith<_$EnterEmailEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPasswordEventImplCopyWith<$Res> {
  factory _$$EnterPasswordEventImplCopyWith(_$EnterPasswordEventImpl value,
          $Res Function(_$EnterPasswordEventImpl) then) =
      __$$EnterPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$EnterPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$EnterPasswordEventImpl>
    implements _$$EnterPasswordEventImplCopyWith<$Res> {
  __$$EnterPasswordEventImplCopyWithImpl(_$EnterPasswordEventImpl _value,
      $Res Function(_$EnterPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$EnterPasswordEventImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPasswordEventImpl implements EnterPasswordEvent {
  const _$EnterPasswordEventImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.enterPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPasswordEventImplCopyWith<_$EnterPasswordEventImpl> get copyWith =>
      __$$EnterPasswordEventImplCopyWithImpl<_$EnterPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return enterPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return enterPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return enterPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return enterPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(this);
    }
    return orElse();
  }
}

abstract class EnterPasswordEvent implements AuthBlocEvent {
  const factory EnterPasswordEvent({required final String password}) =
      _$EnterPasswordEventImpl;

  String get password;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPasswordEventImplCopyWith<_$EnterPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPhoneNumberEventImplCopyWith<$Res> {
  factory _$$EnterPhoneNumberEventImplCopyWith(
          _$EnterPhoneNumberEventImpl value,
          $Res Function(_$EnterPhoneNumberEventImpl) then) =
      __$$EnterPhoneNumberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$EnterPhoneNumberEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$EnterPhoneNumberEventImpl>
    implements _$$EnterPhoneNumberEventImplCopyWith<$Res> {
  __$$EnterPhoneNumberEventImplCopyWithImpl(_$EnterPhoneNumberEventImpl _value,
      $Res Function(_$EnterPhoneNumberEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$EnterPhoneNumberEventImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPhoneNumberEventImpl implements EnterPhoneNumberEvent {
  const _$EnterPhoneNumberEventImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthBlocEvent.enterPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPhoneNumberEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPhoneNumberEventImplCopyWith<_$EnterPhoneNumberEventImpl>
      get copyWith => __$$EnterPhoneNumberEventImplCopyWithImpl<
          _$EnterPhoneNumberEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return enterPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return enterPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return enterPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return enterPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPhoneNumber != null) {
      return enterPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class EnterPhoneNumberEvent implements AuthBlocEvent {
  const factory EnterPhoneNumberEvent({required final String phoneNumber}) =
      _$EnterPhoneNumberEventImpl;

  String get phoneNumber;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPhoneNumberEventImplCopyWith<_$EnterPhoneNumberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPaymentPasswordEventImplCopyWith<$Res> {
  factory _$$EnterPaymentPasswordEventImplCopyWith(
          _$EnterPaymentPasswordEventImpl value,
          $Res Function(_$EnterPaymentPasswordEventImpl) then) =
      __$$EnterPaymentPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentPassword});
}

/// @nodoc
class __$$EnterPaymentPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$EnterPaymentPasswordEventImpl>
    implements _$$EnterPaymentPasswordEventImplCopyWith<$Res> {
  __$$EnterPaymentPasswordEventImplCopyWithImpl(
      _$EnterPaymentPasswordEventImpl _value,
      $Res Function(_$EnterPaymentPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentPassword = null,
  }) {
    return _then(_$EnterPaymentPasswordEventImpl(
      paymentPassword: null == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterPaymentPasswordEventImpl implements EnterPaymentPasswordEvent {
  const _$EnterPaymentPasswordEventImpl({required this.paymentPassword});

  @override
  final String paymentPassword;

  @override
  String toString() {
    return 'AuthBlocEvent.enterPaymentPassword(paymentPassword: $paymentPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPaymentPasswordEventImpl &&
            (identical(other.paymentPassword, paymentPassword) ||
                other.paymentPassword == paymentPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentPassword);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPaymentPasswordEventImplCopyWith<_$EnterPaymentPasswordEventImpl>
      get copyWith => __$$EnterPaymentPasswordEventImplCopyWithImpl<
          _$EnterPaymentPasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function(String phoneNum) connectPhoneNum,
    required TResult Function(String paymentPassword) connectPaymentPass,
    required TResult Function(String username) enterUsername,
    required TResult Function(String email) enterEmail,
    required TResult Function(String password) enterPassword,
    required TResult Function(String phoneNumber) enterPhoneNumber,
    required TResult Function(String paymentPassword) enterPaymentPassword,
  }) {
    return enterPaymentPassword(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function(String phoneNum)? connectPhoneNum,
    TResult? Function(String paymentPassword)? connectPaymentPass,
    TResult? Function(String username)? enterUsername,
    TResult? Function(String email)? enterEmail,
    TResult? Function(String password)? enterPassword,
    TResult? Function(String phoneNumber)? enterPhoneNumber,
    TResult? Function(String paymentPassword)? enterPaymentPassword,
  }) {
    return enterPaymentPassword?.call(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function(String phoneNum)? connectPhoneNum,
    TResult Function(String paymentPassword)? connectPaymentPass,
    TResult Function(String username)? enterUsername,
    TResult Function(String email)? enterEmail,
    TResult Function(String password)? enterPassword,
    TResult Function(String phoneNumber)? enterPhoneNumber,
    TResult Function(String paymentPassword)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPaymentPassword != null) {
      return enterPaymentPassword(paymentPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
    required TResult Function(ConnectPhoneNumEvent value) connectPhoneNum,
    required TResult Function(ConnectPaymentPassEvent value) connectPaymentPass,
    required TResult Function(EnterUsernameEvent value) enterUsername,
    required TResult Function(EnterEmailEvent value) enterEmail,
    required TResult Function(EnterPasswordEvent value) enterPassword,
    required TResult Function(EnterPhoneNumberEvent value) enterPhoneNumber,
    required TResult Function(EnterPaymentPasswordEvent value)
        enterPaymentPassword,
  }) {
    return enterPaymentPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
    TResult? Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult? Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult? Function(EnterUsernameEvent value)? enterUsername,
    TResult? Function(EnterEmailEvent value)? enterEmail,
    TResult? Function(EnterPasswordEvent value)? enterPassword,
    TResult? Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult? Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
  }) {
    return enterPaymentPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    TResult Function(ConnectPhoneNumEvent value)? connectPhoneNum,
    TResult Function(ConnectPaymentPassEvent value)? connectPaymentPass,
    TResult Function(EnterUsernameEvent value)? enterUsername,
    TResult Function(EnterEmailEvent value)? enterEmail,
    TResult Function(EnterPasswordEvent value)? enterPassword,
    TResult Function(EnterPhoneNumberEvent value)? enterPhoneNumber,
    TResult Function(EnterPaymentPasswordEvent value)? enterPaymentPassword,
    required TResult orElse(),
  }) {
    if (enterPaymentPassword != null) {
      return enterPaymentPassword(this);
    }
    return orElse();
  }
}

abstract class EnterPaymentPasswordEvent implements AuthBlocEvent {
  const factory EnterPaymentPasswordEvent(
          {required final String paymentPassword}) =
      _$EnterPaymentPasswordEventImpl;

  String get paymentPassword;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPaymentPasswordEventImplCopyWith<_$EnterPaymentPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
