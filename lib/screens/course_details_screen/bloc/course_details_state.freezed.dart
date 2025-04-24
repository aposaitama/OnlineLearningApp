// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseDetailsState {
  CourseConcreteModel? get course => throw _privateConstructorUsedError;
  CourseDetailsLoadingStatus get loadingStatus =>
      throw _privateConstructorUsedError;
  CourseLoadingVideoStatus get videoLoadingStatus =>
      throw _privateConstructorUsedError;
  VideoPlayerController? get courseVideo => throw _privateConstructorUsedError;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDetailsStateCopyWith<CourseDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res, CourseDetailsState>;
  @useResult
  $Res call(
      {CourseConcreteModel? course,
      CourseDetailsLoadingStatus loadingStatus,
      CourseLoadingVideoStatus videoLoadingStatus,
      VideoPlayerController? courseVideo});

  $CourseConcreteModelCopyWith<$Res>? get course;
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res, $Val extends CourseDetailsState>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? loadingStatus = null,
    Object? videoLoadingStatus = null,
    Object? courseVideo = freezed,
  }) {
    return _then(_value.copyWith(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseConcreteModel?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CourseDetailsLoadingStatus,
      videoLoadingStatus: null == videoLoadingStatus
          ? _value.videoLoadingStatus
          : videoLoadingStatus // ignore: cast_nullable_to_non_nullable
              as CourseLoadingVideoStatus,
      courseVideo: freezed == courseVideo
          ? _value.courseVideo
          : courseVideo // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ) as $Val);
  }

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseConcreteModelCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseConcreteModelCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseDetailsStateImplCopyWith<$Res>
    implements $CourseDetailsStateCopyWith<$Res> {
  factory _$$CourseDetailsStateImplCopyWith(_$CourseDetailsStateImpl value,
          $Res Function(_$CourseDetailsStateImpl) then) =
      __$$CourseDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CourseConcreteModel? course,
      CourseDetailsLoadingStatus loadingStatus,
      CourseLoadingVideoStatus videoLoadingStatus,
      VideoPlayerController? courseVideo});

  @override
  $CourseConcreteModelCopyWith<$Res>? get course;
}

/// @nodoc
class __$$CourseDetailsStateImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$CourseDetailsStateImpl>
    implements _$$CourseDetailsStateImplCopyWith<$Res> {
  __$$CourseDetailsStateImplCopyWithImpl(_$CourseDetailsStateImpl _value,
      $Res Function(_$CourseDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? loadingStatus = null,
    Object? videoLoadingStatus = null,
    Object? courseVideo = freezed,
  }) {
    return _then(_$CourseDetailsStateImpl(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseConcreteModel?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CourseDetailsLoadingStatus,
      videoLoadingStatus: null == videoLoadingStatus
          ? _value.videoLoadingStatus
          : videoLoadingStatus // ignore: cast_nullable_to_non_nullable
              as CourseLoadingVideoStatus,
      courseVideo: freezed == courseVideo
          ? _value.courseVideo
          : courseVideo // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
    ));
  }
}

/// @nodoc

class _$CourseDetailsStateImpl implements _CourseDetailsState {
  const _$CourseDetailsStateImpl(
      {this.course,
      this.loadingStatus = CourseDetailsLoadingStatus.initial,
      this.videoLoadingStatus = CourseLoadingVideoStatus.initial,
      this.courseVideo});

  @override
  final CourseConcreteModel? course;
  @override
  @JsonKey()
  final CourseDetailsLoadingStatus loadingStatus;
  @override
  @JsonKey()
  final CourseLoadingVideoStatus videoLoadingStatus;
  @override
  final VideoPlayerController? courseVideo;

  @override
  String toString() {
    return 'CourseDetailsState(course: $course, loadingStatus: $loadingStatus, videoLoadingStatus: $videoLoadingStatus, courseVideo: $courseVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDetailsStateImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.videoLoadingStatus, videoLoadingStatus) ||
                other.videoLoadingStatus == videoLoadingStatus) &&
            (identical(other.courseVideo, courseVideo) ||
                other.courseVideo == courseVideo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, course, loadingStatus, videoLoadingStatus, courseVideo);

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDetailsStateImplCopyWith<_$CourseDetailsStateImpl> get copyWith =>
      __$$CourseDetailsStateImplCopyWithImpl<_$CourseDetailsStateImpl>(
          this, _$identity);
}

abstract class _CourseDetailsState implements CourseDetailsState {
  const factory _CourseDetailsState(
      {final CourseConcreteModel? course,
      final CourseDetailsLoadingStatus loadingStatus,
      final CourseLoadingVideoStatus videoLoadingStatus,
      final VideoPlayerController? courseVideo}) = _$CourseDetailsStateImpl;

  @override
  CourseConcreteModel? get course;
  @override
  CourseDetailsLoadingStatus get loadingStatus;
  @override
  CourseLoadingVideoStatus get videoLoadingStatus;
  @override
  VideoPlayerController? get courseVideo;

  /// Create a copy of CourseDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDetailsStateImplCopyWith<_$CourseDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
