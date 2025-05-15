// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageScreenEventCopyWith<$Res> {
  factory $MessageScreenEventCopyWith(
          MessageScreenEvent value, $Res Function(MessageScreenEvent) then) =
      _$MessageScreenEventCopyWithImpl<$Res, MessageScreenEvent>;
}

/// @nodoc
class _$MessageScreenEventCopyWithImpl<$Res, $Val extends MessageScreenEvent>
    implements $MessageScreenEventCopyWith<$Res> {
  _$MessageScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNotificationsEventImplCopyWith<$Res> {
  factory _$$GetNotificationsEventImplCopyWith(
          _$GetNotificationsEventImpl value,
          $Res Function(_$GetNotificationsEventImpl) then) =
      __$$GetNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationsEventImplCopyWithImpl<$Res>
    extends _$MessageScreenEventCopyWithImpl<$Res, _$GetNotificationsEventImpl>
    implements _$$GetNotificationsEventImplCopyWith<$Res> {
  __$$GetNotificationsEventImplCopyWithImpl(_$GetNotificationsEventImpl _value,
      $Res Function(_$GetNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotificationsEventImpl implements GetNotificationsEvent {
  _$GetNotificationsEventImpl();

  @override
  String toString() {
    return 'MessageScreenEvent.getNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
  }) {
    return getNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
  }) {
    return getNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotificationsEvent implements MessageScreenEvent {
  factory GetNotificationsEvent() = _$GetNotificationsEventImpl;
}
