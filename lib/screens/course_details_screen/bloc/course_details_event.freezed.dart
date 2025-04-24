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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsEventCopyWith<$Res> {
  factory $CourseDetailsEventCopyWith(
          CourseDetailsEvent value, $Res Function(CourseDetailsEvent) then) =
      _$CourseDetailsEventCopyWithImpl<$Res, CourseDetailsEvent>;
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
}

/// @nodoc
abstract class _$$LoadConcreteCourseInfoEventImplCopyWith<$Res> {
  factory _$$LoadConcreteCourseInfoEventImplCopyWith(
          _$LoadConcreteCourseInfoEventImpl value,
          $Res Function(_$LoadConcreteCourseInfoEventImpl) then) =
      __$$LoadConcreteCourseInfoEventImplCopyWithImpl<$Res>;
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
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return loadCourseInfo(documentID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return loadCourseInfo?.call(documentID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
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
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return loadCourseInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return loadCourseInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
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

  String get documentID;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadConcreteCourseInfoEventImplCopyWith<_$LoadConcreteCourseInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCourseVideoEventImplCopyWith<$Res> {
  factory _$$LoadCourseVideoEventImplCopyWith(_$LoadCourseVideoEventImpl value,
          $Res Function(_$LoadCourseVideoEventImpl) then) =
      __$$LoadCourseVideoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoUrl});
}

/// @nodoc
class __$$LoadCourseVideoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$LoadCourseVideoEventImpl>
    implements _$$LoadCourseVideoEventImplCopyWith<$Res> {
  __$$LoadCourseVideoEventImplCopyWithImpl(_$LoadCourseVideoEventImpl _value,
      $Res Function(_$LoadCourseVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
  }) {
    return _then(_$LoadCourseVideoEventImpl(
      null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCourseVideoEventImpl implements LoadCourseVideoEvent {
  const _$LoadCourseVideoEventImpl(this.videoUrl);

  @override
  final String videoUrl;

  @override
  String toString() {
    return 'CourseDetailsEvent.loadCourseVideo(videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCourseVideoEventImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCourseVideoEventImplCopyWith<_$LoadCourseVideoEventImpl>
      get copyWith =>
          __$$LoadCourseVideoEventImplCopyWithImpl<_$LoadCourseVideoEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return loadCourseVideo(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return loadCourseVideo?.call(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (loadCourseVideo != null) {
      return loadCourseVideo(videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return loadCourseVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return loadCourseVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (loadCourseVideo != null) {
      return loadCourseVideo(this);
    }
    return orElse();
  }
}

abstract class LoadCourseVideoEvent implements CourseDetailsEvent {
  const factory LoadCourseVideoEvent(final String videoUrl) =
      _$LoadCourseVideoEventImpl;

  String get videoUrl;

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCourseVideoEventImplCopyWith<_$LoadCourseVideoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayVideoEventImplCopyWith<$Res> {
  factory _$$PlayVideoEventImplCopyWith(_$PlayVideoEventImpl value,
          $Res Function(_$PlayVideoEventImpl) then) =
      __$$PlayVideoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayVideoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$PlayVideoEventImpl>
    implements _$$PlayVideoEventImplCopyWith<$Res> {
  __$$PlayVideoEventImplCopyWithImpl(
      _$PlayVideoEventImpl _value, $Res Function(_$PlayVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayVideoEventImpl implements PlayVideoEvent {
  const _$PlayVideoEventImpl();

  @override
  String toString() {
    return 'CourseDetailsEvent.playVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayVideoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return playVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return playVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return playVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return playVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(this);
    }
    return orElse();
  }
}

abstract class PlayVideoEvent implements CourseDetailsEvent {
  const factory PlayVideoEvent() = _$PlayVideoEventImpl;
}

/// @nodoc
abstract class _$$PauseVideoEventImplCopyWith<$Res> {
  factory _$$PauseVideoEventImplCopyWith(_$PauseVideoEventImpl value,
          $Res Function(_$PauseVideoEventImpl) then) =
      __$$PauseVideoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseVideoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$PauseVideoEventImpl>
    implements _$$PauseVideoEventImplCopyWith<$Res> {
  __$$PauseVideoEventImplCopyWithImpl(
      _$PauseVideoEventImpl _value, $Res Function(_$PauseVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseVideoEventImpl implements PauseVideoEvent {
  const _$PauseVideoEventImpl();

  @override
  String toString() {
    return 'CourseDetailsEvent.pauseVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseVideoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return pauseVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return pauseVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (pauseVideo != null) {
      return pauseVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return pauseVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return pauseVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (pauseVideo != null) {
      return pauseVideo(this);
    }
    return orElse();
  }
}

abstract class PauseVideoEvent implements CourseDetailsEvent {
  const factory PauseVideoEvent() = _$PauseVideoEventImpl;
}

/// @nodoc
abstract class _$$ResumeVideoEventImplCopyWith<$Res> {
  factory _$$ResumeVideoEventImplCopyWith(_$ResumeVideoEventImpl value,
          $Res Function(_$ResumeVideoEventImpl) then) =
      __$$ResumeVideoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeVideoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$ResumeVideoEventImpl>
    implements _$$ResumeVideoEventImplCopyWith<$Res> {
  __$$ResumeVideoEventImplCopyWithImpl(_$ResumeVideoEventImpl _value,
      $Res Function(_$ResumeVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeVideoEventImpl implements ResumeVideoEvent {
  const _$ResumeVideoEventImpl();

  @override
  String toString() {
    return 'CourseDetailsEvent.resumeVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeVideoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return resumeVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return resumeVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (resumeVideo != null) {
      return resumeVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return resumeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return resumeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (resumeVideo != null) {
      return resumeVideo(this);
    }
    return orElse();
  }
}

abstract class ResumeVideoEvent implements CourseDetailsEvent {
  const factory ResumeVideoEvent() = _$ResumeVideoEventImpl;
}

/// @nodoc
abstract class _$$CloseVideoEventImplCopyWith<$Res> {
  factory _$$CloseVideoEventImplCopyWith(_$CloseVideoEventImpl value,
          $Res Function(_$CloseVideoEventImpl) then) =
      __$$CloseVideoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseVideoEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$CloseVideoEventImpl>
    implements _$$CloseVideoEventImplCopyWith<$Res> {
  __$$CloseVideoEventImplCopyWithImpl(
      _$CloseVideoEventImpl _value, $Res Function(_$CloseVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseVideoEventImpl implements CloseVideoEvent {
  const _$CloseVideoEventImpl();

  @override
  String toString() {
    return 'CourseDetailsEvent.closeVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseVideoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return closeVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return closeVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (closeVideo != null) {
      return closeVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return closeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return closeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (closeVideo != null) {
      return closeVideo(this);
    }
    return orElse();
  }
}

abstract class CloseVideoEvent implements CourseDetailsEvent {
  const factory CloseVideoEvent() = _$CloseVideoEventImpl;
}

/// @nodoc
abstract class _$$FullScreenEventImplCopyWith<$Res> {
  factory _$$FullScreenEventImplCopyWith(_$FullScreenEventImpl value,
          $Res Function(_$FullScreenEventImpl) then) =
      __$$FullScreenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FullScreenEventImplCopyWithImpl<$Res>
    extends _$CourseDetailsEventCopyWithImpl<$Res, _$FullScreenEventImpl>
    implements _$$FullScreenEventImplCopyWith<$Res> {
  __$$FullScreenEventImplCopyWithImpl(
      _$FullScreenEventImpl _value, $Res Function(_$FullScreenEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FullScreenEventImpl implements FullScreenEvent {
  const _$FullScreenEventImpl();

  @override
  String toString() {
    return 'CourseDetailsEvent.fullScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FullScreenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String documentID) loadCourseInfo,
    required TResult Function(String videoUrl) loadCourseVideo,
    required TResult Function() playVideo,
    required TResult Function() pauseVideo,
    required TResult Function() resumeVideo,
    required TResult Function() closeVideo,
    required TResult Function() fullScreen,
  }) {
    return fullScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String documentID)? loadCourseInfo,
    TResult? Function(String videoUrl)? loadCourseVideo,
    TResult? Function()? playVideo,
    TResult? Function()? pauseVideo,
    TResult? Function()? resumeVideo,
    TResult? Function()? closeVideo,
    TResult? Function()? fullScreen,
  }) {
    return fullScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String documentID)? loadCourseInfo,
    TResult Function(String videoUrl)? loadCourseVideo,
    TResult Function()? playVideo,
    TResult Function()? pauseVideo,
    TResult Function()? resumeVideo,
    TResult Function()? closeVideo,
    TResult Function()? fullScreen,
    required TResult orElse(),
  }) {
    if (fullScreen != null) {
      return fullScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCourseInfoEvent value) loadCourseInfo,
    required TResult Function(LoadCourseVideoEvent value) loadCourseVideo,
    required TResult Function(PlayVideoEvent value) playVideo,
    required TResult Function(PauseVideoEvent value) pauseVideo,
    required TResult Function(ResumeVideoEvent value) resumeVideo,
    required TResult Function(CloseVideoEvent value) closeVideo,
    required TResult Function(FullScreenEvent value) fullScreen,
  }) {
    return fullScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult? Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult? Function(PlayVideoEvent value)? playVideo,
    TResult? Function(PauseVideoEvent value)? pauseVideo,
    TResult? Function(ResumeVideoEvent value)? resumeVideo,
    TResult? Function(CloseVideoEvent value)? closeVideo,
    TResult? Function(FullScreenEvent value)? fullScreen,
  }) {
    return fullScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCourseInfoEvent value)? loadCourseInfo,
    TResult Function(LoadCourseVideoEvent value)? loadCourseVideo,
    TResult Function(PlayVideoEvent value)? playVideo,
    TResult Function(PauseVideoEvent value)? pauseVideo,
    TResult Function(ResumeVideoEvent value)? resumeVideo,
    TResult Function(CloseVideoEvent value)? closeVideo,
    TResult Function(FullScreenEvent value)? fullScreen,
    required TResult orElse(),
  }) {
    if (fullScreen != null) {
      return fullScreen(this);
    }
    return orElse();
  }
}

abstract class FullScreenEvent implements CourseDetailsEvent {
  const factory FullScreenEvent() = _$FullScreenEventImpl;
}
