// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() pickNewImage,
    required TResult Function() editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? pickNewImage,
    TResult? Function()? editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? pickNewImage,
    TResult Function()? editUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(PickNewAvatarEvent value) pickNewImage,
    required TResult Function(EditUserDataEvent value) editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(PickNewAvatarEvent value)? pickNewImage,
    TResult? Function(EditUserDataEvent value)? editUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(PickNewAvatarEvent value)? pickNewImage,
    TResult Function(EditUserDataEvent value)? editUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserDataEventImplCopyWith<$Res> {
  factory _$$GetUserDataEventImplCopyWith(_$GetUserDataEventImpl value,
          $Res Function(_$GetUserDataEventImpl) then) =
      __$$GetUserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetUserDataEventImpl>
    implements _$$GetUserDataEventImplCopyWith<$Res> {
  __$$GetUserDataEventImplCopyWithImpl(_$GetUserDataEventImpl _value,
      $Res Function(_$GetUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataEventImpl implements GetUserDataEvent {
  const _$GetUserDataEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() pickNewImage,
    required TResult Function() editUserData,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? pickNewImage,
    TResult? Function()? editUserData,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? pickNewImage,
    TResult Function()? editUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(PickNewAvatarEvent value) pickNewImage,
    required TResult Function(EditUserDataEvent value) editUserData,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(PickNewAvatarEvent value)? pickNewImage,
    TResult? Function(EditUserDataEvent value)? editUserData,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(PickNewAvatarEvent value)? pickNewImage,
    TResult Function(EditUserDataEvent value)? editUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserDataEvent implements AccountEvent {
  const factory GetUserDataEvent() = _$GetUserDataEventImpl;
}

/// @nodoc
abstract class _$$PickNewAvatarEventImplCopyWith<$Res> {
  factory _$$PickNewAvatarEventImplCopyWith(_$PickNewAvatarEventImpl value,
          $Res Function(_$PickNewAvatarEventImpl) then) =
      __$$PickNewAvatarEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickNewAvatarEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$PickNewAvatarEventImpl>
    implements _$$PickNewAvatarEventImplCopyWith<$Res> {
  __$$PickNewAvatarEventImplCopyWithImpl(_$PickNewAvatarEventImpl _value,
      $Res Function(_$PickNewAvatarEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickNewAvatarEventImpl implements PickNewAvatarEvent {
  const _$PickNewAvatarEventImpl();

  @override
  String toString() {
    return 'AccountEvent.pickNewImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickNewAvatarEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() pickNewImage,
    required TResult Function() editUserData,
  }) {
    return pickNewImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? pickNewImage,
    TResult? Function()? editUserData,
  }) {
    return pickNewImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? pickNewImage,
    TResult Function()? editUserData,
    required TResult orElse(),
  }) {
    if (pickNewImage != null) {
      return pickNewImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(PickNewAvatarEvent value) pickNewImage,
    required TResult Function(EditUserDataEvent value) editUserData,
  }) {
    return pickNewImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(PickNewAvatarEvent value)? pickNewImage,
    TResult? Function(EditUserDataEvent value)? editUserData,
  }) {
    return pickNewImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(PickNewAvatarEvent value)? pickNewImage,
    TResult Function(EditUserDataEvent value)? editUserData,
    required TResult orElse(),
  }) {
    if (pickNewImage != null) {
      return pickNewImage(this);
    }
    return orElse();
  }
}

abstract class PickNewAvatarEvent implements AccountEvent {
  const factory PickNewAvatarEvent() = _$PickNewAvatarEventImpl;
}

/// @nodoc
abstract class _$$EditUserDataEventImplCopyWith<$Res> {
  factory _$$EditUserDataEventImplCopyWith(_$EditUserDataEventImpl value,
          $Res Function(_$EditUserDataEventImpl) then) =
      __$$EditUserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditUserDataEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$EditUserDataEventImpl>
    implements _$$EditUserDataEventImplCopyWith<$Res> {
  __$$EditUserDataEventImplCopyWithImpl(_$EditUserDataEventImpl _value,
      $Res Function(_$EditUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditUserDataEventImpl implements EditUserDataEvent {
  const _$EditUserDataEventImpl();

  @override
  String toString() {
    return 'AccountEvent.editUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditUserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() pickNewImage,
    required TResult Function() editUserData,
  }) {
    return editUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? pickNewImage,
    TResult? Function()? editUserData,
  }) {
    return editUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? pickNewImage,
    TResult Function()? editUserData,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(PickNewAvatarEvent value) pickNewImage,
    required TResult Function(EditUserDataEvent value) editUserData,
  }) {
    return editUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(PickNewAvatarEvent value)? pickNewImage,
    TResult? Function(EditUserDataEvent value)? editUserData,
  }) {
    return editUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(PickNewAvatarEvent value)? pickNewImage,
    TResult Function(EditUserDataEvent value)? editUserData,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData(this);
    }
    return orElse();
  }
}

abstract class EditUserDataEvent implements AccountEvent {
  const factory EditUserDataEvent() = _$EditUserDataEventImpl;
}
