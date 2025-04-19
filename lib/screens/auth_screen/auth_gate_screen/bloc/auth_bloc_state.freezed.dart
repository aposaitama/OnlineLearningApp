// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthGateBlocState {
  AuthGateStatus get gateStatus => throw _privateConstructorUsedError;

  /// Create a copy of AuthGateBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthGateBlocStateCopyWith<AuthGateBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthGateBlocStateCopyWith<$Res> {
  factory $AuthGateBlocStateCopyWith(
          AuthGateBlocState value, $Res Function(AuthGateBlocState) then) =
      _$AuthGateBlocStateCopyWithImpl<$Res, AuthGateBlocState>;
  @useResult
  $Res call({AuthGateStatus gateStatus});
}

/// @nodoc
class _$AuthGateBlocStateCopyWithImpl<$Res, $Val extends AuthGateBlocState>
    implements $AuthGateBlocStateCopyWith<$Res> {
  _$AuthGateBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthGateBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateStatus = null,
  }) {
    return _then(_value.copyWith(
      gateStatus: null == gateStatus
          ? _value.gateStatus
          : gateStatus // ignore: cast_nullable_to_non_nullable
              as AuthGateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthGateBlocStateImplCopyWith<$Res>
    implements $AuthGateBlocStateCopyWith<$Res> {
  factory _$$AuthGateBlocStateImplCopyWith(_$AuthGateBlocStateImpl value,
          $Res Function(_$AuthGateBlocStateImpl) then) =
      __$$AuthGateBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthGateStatus gateStatus});
}

/// @nodoc
class __$$AuthGateBlocStateImplCopyWithImpl<$Res>
    extends _$AuthGateBlocStateCopyWithImpl<$Res, _$AuthGateBlocStateImpl>
    implements _$$AuthGateBlocStateImplCopyWith<$Res> {
  __$$AuthGateBlocStateImplCopyWithImpl(_$AuthGateBlocStateImpl _value,
      $Res Function(_$AuthGateBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthGateBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateStatus = null,
  }) {
    return _then(_$AuthGateBlocStateImpl(
      gateStatus: null == gateStatus
          ? _value.gateStatus
          : gateStatus // ignore: cast_nullable_to_non_nullable
              as AuthGateStatus,
    ));
  }
}

/// @nodoc

class _$AuthGateBlocStateImpl implements _AuthGateBlocState {
  const _$AuthGateBlocStateImpl({this.gateStatus = AuthGateStatus.initial});

  @override
  @JsonKey()
  final AuthGateStatus gateStatus;

  @override
  String toString() {
    return 'AuthGateBlocState(gateStatus: $gateStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthGateBlocStateImpl &&
            (identical(other.gateStatus, gateStatus) ||
                other.gateStatus == gateStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gateStatus);

  /// Create a copy of AuthGateBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthGateBlocStateImplCopyWith<_$AuthGateBlocStateImpl> get copyWith =>
      __$$AuthGateBlocStateImplCopyWithImpl<_$AuthGateBlocStateImpl>(
          this, _$identity);
}

abstract class _AuthGateBlocState implements AuthGateBlocState {
  const factory _AuthGateBlocState({final AuthGateStatus gateStatus}) =
      _$AuthGateBlocStateImpl;

  @override
  AuthGateStatus get gateStatus;

  /// Create a copy of AuthGateBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthGateBlocStateImplCopyWith<_$AuthGateBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
