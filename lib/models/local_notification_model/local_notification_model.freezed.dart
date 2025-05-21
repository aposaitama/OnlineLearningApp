// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalNotificationModel _$LocalNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _LocalNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$LocalNotificationModel {
  int get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String get notificationType => throw _privateConstructorUsedError;

  /// Serializes this LocalNotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalNotificationModelCopyWith<LocalNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNotificationModelCopyWith<$Res> {
  factory $LocalNotificationModelCopyWith(LocalNotificationModel value,
          $Res Function(LocalNotificationModel) then) =
      _$LocalNotificationModelCopyWithImpl<$Res, LocalNotificationModel>;
  @useResult
  $Res call(
      {int id,
      String body,
      @DateConverter() DateTime date,
      String notificationType});
}

/// @nodoc
class _$LocalNotificationModelCopyWithImpl<$Res,
        $Val extends LocalNotificationModel>
    implements $LocalNotificationModelCopyWith<$Res> {
  _$LocalNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? date = null,
    Object? notificationType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalNotificationModelImplCopyWith<$Res>
    implements $LocalNotificationModelCopyWith<$Res> {
  factory _$$LocalNotificationModelImplCopyWith(
          _$LocalNotificationModelImpl value,
          $Res Function(_$LocalNotificationModelImpl) then) =
      __$$LocalNotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      @DateConverter() DateTime date,
      String notificationType});
}

/// @nodoc
class __$$LocalNotificationModelImplCopyWithImpl<$Res>
    extends _$LocalNotificationModelCopyWithImpl<$Res,
        _$LocalNotificationModelImpl>
    implements _$$LocalNotificationModelImplCopyWith<$Res> {
  __$$LocalNotificationModelImplCopyWithImpl(
      _$LocalNotificationModelImpl _value,
      $Res Function(_$LocalNotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? date = null,
    Object? notificationType = null,
  }) {
    return _then(_$LocalNotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalNotificationModelImpl implements _LocalNotificationModel {
  _$LocalNotificationModelImpl(
      {required this.id,
      required this.body,
      @DateConverter() required this.date,
      required this.notificationType});

  factory _$LocalNotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalNotificationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String body;
  @override
  @DateConverter()
  final DateTime date;
  @override
  final String notificationType;

  @override
  String toString() {
    return 'LocalNotificationModel(id: $id, body: $body, date: $date, notificationType: $notificationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalNotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, body, date, notificationType);

  /// Create a copy of LocalNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalNotificationModelImplCopyWith<_$LocalNotificationModelImpl>
      get copyWith => __$$LocalNotificationModelImplCopyWithImpl<
          _$LocalNotificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalNotificationModelImplToJson(
      this,
    );
  }
}

abstract class _LocalNotificationModel implements LocalNotificationModel {
  factory _LocalNotificationModel(
      {required final int id,
      required final String body,
      @DateConverter() required final DateTime date,
      required final String notificationType}) = _$LocalNotificationModelImpl;

  factory _LocalNotificationModel.fromJson(Map<String, dynamic> json) =
      _$LocalNotificationModelImpl.fromJson;

  @override
  int get id;
  @override
  String get body;
  @override
  @DateConverter()
  DateTime get date;
  @override
  String get notificationType;

  /// Create a copy of LocalNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalNotificationModelImplCopyWith<_$LocalNotificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
