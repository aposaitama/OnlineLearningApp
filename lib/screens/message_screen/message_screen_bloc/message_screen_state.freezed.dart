// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageScreenState {
  List<LocalNotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  NotificationListStatus get notificationListStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of MessageScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageScreenStateCopyWith<MessageScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageScreenStateCopyWith<$Res> {
  factory $MessageScreenStateCopyWith(
          MessageScreenState value, $Res Function(MessageScreenState) then) =
      _$MessageScreenStateCopyWithImpl<$Res, MessageScreenState>;
  @useResult
  $Res call(
      {List<LocalNotificationModel> notifications,
      NotificationListStatus notificationListStatus});
}

/// @nodoc
class _$MessageScreenStateCopyWithImpl<$Res, $Val extends MessageScreenState>
    implements $MessageScreenStateCopyWith<$Res> {
  _$MessageScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? notificationListStatus = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotificationModel>,
      notificationListStatus: null == notificationListStatus
          ? _value.notificationListStatus
          : notificationListStatus // ignore: cast_nullable_to_non_nullable
              as NotificationListStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageScreenStateImplCopyWith<$Res>
    implements $MessageScreenStateCopyWith<$Res> {
  factory _$$MessageScreenStateImplCopyWith(_$MessageScreenStateImpl value,
          $Res Function(_$MessageScreenStateImpl) then) =
      __$$MessageScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocalNotificationModel> notifications,
      NotificationListStatus notificationListStatus});
}

/// @nodoc
class __$$MessageScreenStateImplCopyWithImpl<$Res>
    extends _$MessageScreenStateCopyWithImpl<$Res, _$MessageScreenStateImpl>
    implements _$$MessageScreenStateImplCopyWith<$Res> {
  __$$MessageScreenStateImplCopyWithImpl(_$MessageScreenStateImpl _value,
      $Res Function(_$MessageScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? notificationListStatus = null,
  }) {
    return _then(_$MessageScreenStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<LocalNotificationModel>,
      notificationListStatus: null == notificationListStatus
          ? _value.notificationListStatus
          : notificationListStatus // ignore: cast_nullable_to_non_nullable
              as NotificationListStatus,
    ));
  }
}

/// @nodoc

class _$MessageScreenStateImpl implements _MessageScreenState {
  _$MessageScreenStateImpl(
      {final List<LocalNotificationModel> notifications = const [],
      this.notificationListStatus = NotificationListStatus.initial})
      : _notifications = notifications;

  final List<LocalNotificationModel> _notifications;
  @override
  @JsonKey()
  List<LocalNotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final NotificationListStatus notificationListStatus;

  @override
  String toString() {
    return 'MessageScreenState(notifications: $notifications, notificationListStatus: $notificationListStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.notificationListStatus, notificationListStatus) ||
                other.notificationListStatus == notificationListStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      notificationListStatus);

  /// Create a copy of MessageScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageScreenStateImplCopyWith<_$MessageScreenStateImpl> get copyWith =>
      __$$MessageScreenStateImplCopyWithImpl<_$MessageScreenStateImpl>(
          this, _$identity);
}

abstract class _MessageScreenState implements MessageScreenState {
  factory _MessageScreenState(
          {final List<LocalNotificationModel> notifications,
          final NotificationListStatus notificationListStatus}) =
      _$MessageScreenStateImpl;

  @override
  List<LocalNotificationModel> get notifications;
  @override
  NotificationListStatus get notificationListStatus;

  /// Create a copy of MessageScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageScreenStateImplCopyWith<_$MessageScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
