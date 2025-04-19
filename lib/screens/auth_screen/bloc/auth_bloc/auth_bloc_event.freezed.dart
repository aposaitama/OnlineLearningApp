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
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthBlocEventCopyWith<AuthBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
  @useResult
  $Res call({String email, String password});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterUserBlocEventImplCopyWith<$Res>
    implements $AuthBlocEventCopyWith<$Res> {
  factory _$$RegisterUserBlocEventImplCopyWith(
          _$RegisterUserBlocEventImpl value,
          $Res Function(_$RegisterUserBlocEventImpl) then) =
      __$$RegisterUserBlocEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String email, String password});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterUserBlocEventImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$RegisterUserBlocEventImpl implements RegisterUserBlocEvent {
  const _$RegisterUserBlocEventImpl(this.userName, this.email, this.password);

  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.registerUser(userName: $userName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserBlocEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, email, password);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserBlocEventImplCopyWith<_$RegisterUserBlocEventImpl>
      get copyWith => __$$RegisterUserBlocEventImplCopyWithImpl<
          _$RegisterUserBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String email, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
  }) {
    return registerUser(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
  }) {
    return registerUser?.call(userName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(userName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUserBlocEvent value) registerUser,
    required TResult Function(LoginUserBlocEvent value) loginUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUserBlocEvent implements AuthBlocEvent {
  const factory RegisterUserBlocEvent(
          final String userName, final String email, final String password) =
      _$RegisterUserBlocEventImpl;

  String get userName;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserBlocEventImplCopyWith<_$RegisterUserBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserBlocEventImplCopyWith<$Res>
    implements $AuthBlocEventCopyWith<$Res> {
  factory _$$LoginUserBlocEventImplCopyWith(_$LoginUserBlocEventImpl value,
          $Res Function(_$LoginUserBlocEventImpl) then) =
      __$$LoginUserBlocEventImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String userName, String email, String password)
        registerUser,
    required TResult Function(String email, String password) loginUser,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String email, String password)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String email, String password)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
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
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUserBlocEvent value)? registerUser,
    TResult? Function(LoginUserBlocEvent value)? loginUser,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUserBlocEvent value)? registerUser,
    TResult Function(LoginUserBlocEvent value)? loginUser,
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

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserBlocEventImplCopyWith<_$LoginUserBlocEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
