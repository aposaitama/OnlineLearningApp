// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseDetailsEvent {
  String get documentID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDetailsEventCopyWith<CourseDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsEventCopyWith<$Res> {
  factory $CourseDetailsEventCopyWith(
          CourseDetailsEvent value, $Res Function(CourseDetailsEvent) then) =
      _$CourseDetailsEventCopyWithImpl<$Res, CourseDetailsEvent>;
  @useResult
  $Res call({String documentID});
}

/// @nodoc
class _$CourseDetailsEventCopyWithImpl<$Res, $Val extends CourseDetailsEvent>
    implements $CourseDetailsEventCopyWith<$Res> {
  _$CourseDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentID = null,
  }) {
    return _then(_value.copyWith(
      documentID: null == documentID
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadConcreteCourseInfoEventImplCopyWith<$Res>
    implements $CourseDetailsEventCopyWith<$Res> {
  factory _$$LoadConcreteCourseInfoEventImplCopyWith(
          _$LoadConcreteCourseInfoEventImpl value,
          $Res Function(_$LoadConcreteCourseInfoEventImpl) then) =
      __$$LoadConcreteCourseInfoEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String documentID});
}

/// @nodoc
class __$$LoadConcreteCourseInfoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res,
        _$LoadConcreteCourseInfoEventImpl>
    implements _$$LoadConcreteCourseInfoEventImplCopyWith<$Res> {
  __$$LoadConcreteCourseInfoEventImplCopyWithImpl(
      _$LoadConcreteCourseInfoEventImpl _value,
      $Res Function(_$LoadConcreteCourseInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentID = null,
  }) {
    return _then(_$LoadConcreteCourseInfoEventImpl(
      null == documentID
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadConcreteCourseInfoEventImpl implements LoadConcreteCourseInfoEvent {
  const _$LoadConcreteCourseInfoEventImpl(this.documentID);

  @override
  final String documentID;

  @override
  String toString() {
    return 'CourseDetailsEvent.loadCourseInfo(documentID: $documentID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadConcreteCourseInfoEventImpl &&
            (identical(other.documentID, documentID) ||
                other.documentID == documentID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentID);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadConcreteCourseInfoEventImplCopyWith<_$LoadConcreteCourseInfoEventImpl>
      get copyWith => __$$LoadConcreteCourseInfoEventImplCopyWithImpl<
          _$LoadConcreteCourseInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
  }) {
    return loadCourseInfo(documentID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
  }) {
    return loadCourseInfo?.call(documentID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    required TResult orElse(),
  }) {
    if (loadCourseInfo != null) {
      return loadCourseInfo(documentID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
  }) {
    return loadCourseInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
  }) {
    return loadCourseInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    required TResult orElse(),
  }) {
    if (loadCourseInfo != null) {
      return loadCourseInfo(this);
    }
    return orElse();
  }
}

abstract class LoadConcreteCourseInfoEvent implements CourseDetailsEvent {
  const factory LoadConcreteCourseInfoEvent(final String documentID) =
      _$LoadConcreteCourseInfoEventImpl;

  @override
  String get documentID;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadConcreteCourseInfoEventImplCopyWith<_$LoadConcreteCourseInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
