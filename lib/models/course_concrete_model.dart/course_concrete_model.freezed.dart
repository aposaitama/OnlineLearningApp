// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_concrete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseConcreteModel _$CourseConcreteModelFromJson(Map<String, dynamic> json) {
  return _CourseConcreteModel.fromJson(json);
}

/// @nodoc
mixin _$CourseConcreteModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  String get courseDescription => throw _privateConstructorUsedError;
  Image get courseImage => throw _privateConstructorUsedError;
  String get courseAuthor => throw _privateConstructorUsedError;
  int get totalCourseDurationInSeconds => throw _privateConstructorUsedError;
  double get coursePrice => throw _privateConstructorUsedError;
  String get courseType => throw _privateConstructorUsedError;
  List<CourseVideoItem> get courseVideoItems =>
      throw _privateConstructorUsedError;

  /// Serializes this CourseConcreteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseConcreteModelCopyWith<CourseConcreteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseConcreteModelCopyWith<$Res> {
  factory $CourseConcreteModelCopyWith(
          CourseConcreteModel value, $Res Function(CourseConcreteModel) then) =
      _$CourseConcreteModelCopyWithImpl<$Res, CourseConcreteModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String courseTitle,
      String courseDescription,
      Image courseImage,
      String courseAuthor,
      int totalCourseDurationInSeconds,
      double coursePrice,
      String courseType,
      List<CourseVideoItem> courseVideoItems});

  $ImageCopyWith<$Res> get courseImage;
}

/// @nodoc
class _$CourseConcreteModelCopyWithImpl<$Res, $Val extends CourseConcreteModel>
    implements $CourseConcreteModelCopyWith<$Res> {
  _$CourseConcreteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? courseTitle = null,
    Object? courseDescription = null,
    Object? courseImage = null,
    Object? courseAuthor = null,
    Object? totalCourseDurationInSeconds = null,
    Object? coursePrice = null,
    Object? courseType = null,
    Object? courseVideoItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: null == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as Image,
      courseAuthor: null == courseAuthor
          ? _value.courseAuthor
          : courseAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      totalCourseDurationInSeconds: null == totalCourseDurationInSeconds
          ? _value.totalCourseDurationInSeconds
          : totalCourseDurationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as double,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      courseVideoItems: null == courseVideoItems
          ? _value.courseVideoItems
          : courseVideoItems // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoItem>,
    ) as $Val);
  }

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get courseImage {
    return $ImageCopyWith<$Res>(_value.courseImage, (value) {
      return _then(_value.copyWith(courseImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseConcreteModelImplCopyWith<$Res>
    implements $CourseConcreteModelCopyWith<$Res> {
  factory _$$CourseConcreteModelImplCopyWith(_$CourseConcreteModelImpl value,
          $Res Function(_$CourseConcreteModelImpl) then) =
      __$$CourseConcreteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String courseTitle,
      String courseDescription,
      Image courseImage,
      String courseAuthor,
      int totalCourseDurationInSeconds,
      double coursePrice,
      String courseType,
      List<CourseVideoItem> courseVideoItems});

  @override
  $ImageCopyWith<$Res> get courseImage;
}

/// @nodoc
class __$$CourseConcreteModelImplCopyWithImpl<$Res>
    extends _$CourseConcreteModelCopyWithImpl<$Res, _$CourseConcreteModelImpl>
    implements _$$CourseConcreteModelImplCopyWith<$Res> {
  __$$CourseConcreteModelImplCopyWithImpl(_$CourseConcreteModelImpl _value,
      $Res Function(_$CourseConcreteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? courseTitle = null,
    Object? courseDescription = null,
    Object? courseImage = null,
    Object? courseAuthor = null,
    Object? totalCourseDurationInSeconds = null,
    Object? coursePrice = null,
    Object? courseType = null,
    Object? courseVideoItems = null,
  }) {
    return _then(_$CourseConcreteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: null == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as Image,
      courseAuthor: null == courseAuthor
          ? _value.courseAuthor
          : courseAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      totalCourseDurationInSeconds: null == totalCourseDurationInSeconds
          ? _value.totalCourseDurationInSeconds
          : totalCourseDurationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      coursePrice: null == coursePrice
          ? _value.coursePrice
          : coursePrice // ignore: cast_nullable_to_non_nullable
              as double,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      courseVideoItems: null == courseVideoItems
          ? _value._courseVideoItems
          : courseVideoItems // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseConcreteModelImpl implements _CourseConcreteModel {
  const _$CourseConcreteModelImpl(
      {required this.id,
      required this.documentId,
      required this.courseTitle,
      required this.courseDescription,
      required this.courseImage,
      required this.courseAuthor,
      required this.totalCourseDurationInSeconds,
      required this.coursePrice,
      required this.courseType,
      required final List<CourseVideoItem> courseVideoItems})
      : _courseVideoItems = courseVideoItems;

  factory _$CourseConcreteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseConcreteModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String courseTitle;
  @override
  final String courseDescription;
  @override
  final Image courseImage;
  @override
  final String courseAuthor;
  @override
  final int totalCourseDurationInSeconds;
  @override
  final double coursePrice;
  @override
  final String courseType;
  final List<CourseVideoItem> _courseVideoItems;
  @override
  List<CourseVideoItem> get courseVideoItems {
    if (_courseVideoItems is EqualUnmodifiableListView)
      return _courseVideoItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseVideoItems);
  }

  @override
  String toString() {
    return 'CourseConcreteModel(id: $id, documentId: $documentId, courseTitle: $courseTitle, courseDescription: $courseDescription, courseImage: $courseImage, courseAuthor: $courseAuthor, totalCourseDurationInSeconds: $totalCourseDurationInSeconds, coursePrice: $coursePrice, courseType: $courseType, courseVideoItems: $courseVideoItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseConcreteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.courseAuthor, courseAuthor) ||
                other.courseAuthor == courseAuthor) &&
            (identical(other.totalCourseDurationInSeconds,
                    totalCourseDurationInSeconds) ||
                other.totalCourseDurationInSeconds ==
                    totalCourseDurationInSeconds) &&
            (identical(other.coursePrice, coursePrice) ||
                other.coursePrice == coursePrice) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            const DeepCollectionEquality()
                .equals(other._courseVideoItems, _courseVideoItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      documentId,
      courseTitle,
      courseDescription,
      courseImage,
      courseAuthor,
      totalCourseDurationInSeconds,
      coursePrice,
      courseType,
      const DeepCollectionEquality().hash(_courseVideoItems));

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseConcreteModelImplCopyWith<_$CourseConcreteModelImpl> get copyWith =>
      __$$CourseConcreteModelImplCopyWithImpl<_$CourseConcreteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseConcreteModelImplToJson(
      this,
    );
  }
}

abstract class _CourseConcreteModel implements CourseConcreteModel {
  const factory _CourseConcreteModel(
          {required final int id,
          required final String documentId,
          required final String courseTitle,
          required final String courseDescription,
          required final Image courseImage,
          required final String courseAuthor,
          required final int totalCourseDurationInSeconds,
          required final double coursePrice,
          required final String courseType,
          required final List<CourseVideoItem> courseVideoItems}) =
      _$CourseConcreteModelImpl;

  factory _CourseConcreteModel.fromJson(Map<String, dynamic> json) =
      _$CourseConcreteModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get courseTitle;
  @override
  String get courseDescription;
  @override
  Image get courseImage;
  @override
  String get courseAuthor;
  @override
  int get totalCourseDurationInSeconds;
  @override
  double get coursePrice;
  @override
  String get courseType;
  @override
  List<CourseVideoItem> get courseVideoItems;

  /// Create a copy of CourseConcreteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseConcreteModelImplCopyWith<_$CourseConcreteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseVideoItem _$CourseVideoItemFromJson(Map<String, dynamic> json) {
  return _CourseVideoItem.fromJson(json);
}

/// @nodoc
mixin _$CourseVideoItem {
  int get id => throw _privateConstructorUsedError;
  String get videoTitle => throw _privateConstructorUsedError;
  int get videoDurationInSeconds => throw _privateConstructorUsedError;
  VideoAvailabilityStatus get videoAvailabilityStatus =>
      throw _privateConstructorUsedError;
  Image get video => throw _privateConstructorUsedError;

  /// Serializes this CourseVideoItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseVideoItemCopyWith<CourseVideoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseVideoItemCopyWith<$Res> {
  factory $CourseVideoItemCopyWith(
          CourseVideoItem value, $Res Function(CourseVideoItem) then) =
      _$CourseVideoItemCopyWithImpl<$Res, CourseVideoItem>;
  @useResult
  $Res call(
      {int id,
      String videoTitle,
      int videoDurationInSeconds,
      VideoAvailabilityStatus videoAvailabilityStatus,
      Image video});

  $ImageCopyWith<$Res> get video;
}

/// @nodoc
class _$CourseVideoItemCopyWithImpl<$Res, $Val extends CourseVideoItem>
    implements $CourseVideoItemCopyWith<$Res> {
  _$CourseVideoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videoTitle = null,
    Object? videoDurationInSeconds = null,
    Object? videoAvailabilityStatus = null,
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoTitle: null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoDurationInSeconds: null == videoDurationInSeconds
          ? _value.videoDurationInSeconds
          : videoDurationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      videoAvailabilityStatus: null == videoAvailabilityStatus
          ? _value.videoAvailabilityStatus
          : videoAvailabilityStatus // ignore: cast_nullable_to_non_nullable
              as VideoAvailabilityStatus,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get video {
    return $ImageCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseVideoItemImplCopyWith<$Res>
    implements $CourseVideoItemCopyWith<$Res> {
  factory _$$CourseVideoItemImplCopyWith(_$CourseVideoItemImpl value,
          $Res Function(_$CourseVideoItemImpl) then) =
      __$$CourseVideoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String videoTitle,
      int videoDurationInSeconds,
      VideoAvailabilityStatus videoAvailabilityStatus,
      Image video});

  @override
  $ImageCopyWith<$Res> get video;
}

/// @nodoc
class __$$CourseVideoItemImplCopyWithImpl<$Res>
    extends _$CourseVideoItemCopyWithImpl<$Res, _$CourseVideoItemImpl>
    implements _$$CourseVideoItemImplCopyWith<$Res> {
  __$$CourseVideoItemImplCopyWithImpl(
      _$CourseVideoItemImpl _value, $Res Function(_$CourseVideoItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videoTitle = null,
    Object? videoDurationInSeconds = null,
    Object? videoAvailabilityStatus = null,
    Object? video = null,
  }) {
    return _then(_$CourseVideoItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoTitle: null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoDurationInSeconds: null == videoDurationInSeconds
          ? _value.videoDurationInSeconds
          : videoDurationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      videoAvailabilityStatus: null == videoAvailabilityStatus
          ? _value.videoAvailabilityStatus
          : videoAvailabilityStatus // ignore: cast_nullable_to_non_nullable
              as VideoAvailabilityStatus,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseVideoItemImpl implements _CourseVideoItem {
  const _$CourseVideoItemImpl(
      {required this.id,
      required this.videoTitle,
      required this.videoDurationInSeconds,
      required this.videoAvailabilityStatus,
      required this.video});

  factory _$CourseVideoItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseVideoItemImplFromJson(json);

  @override
  final int id;
  @override
  final String videoTitle;
  @override
  final int videoDurationInSeconds;
  @override
  final VideoAvailabilityStatus videoAvailabilityStatus;
  @override
  final Image video;

  @override
  String toString() {
    return 'CourseVideoItem(id: $id, videoTitle: $videoTitle, videoDurationInSeconds: $videoDurationInSeconds, videoAvailabilityStatus: $videoAvailabilityStatus, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseVideoItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoDurationInSeconds, videoDurationInSeconds) ||
                other.videoDurationInSeconds == videoDurationInSeconds) &&
            (identical(
                    other.videoAvailabilityStatus, videoAvailabilityStatus) ||
                other.videoAvailabilityStatus == videoAvailabilityStatus) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, videoTitle,
      videoDurationInSeconds, videoAvailabilityStatus, video);

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseVideoItemImplCopyWith<_$CourseVideoItemImpl> get copyWith =>
      __$$CourseVideoItemImplCopyWithImpl<_$CourseVideoItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseVideoItemImplToJson(
      this,
    );
  }
}

abstract class _CourseVideoItem implements CourseVideoItem {
  const factory _CourseVideoItem(
      {required final int id,
      required final String videoTitle,
      required final int videoDurationInSeconds,
      required final VideoAvailabilityStatus videoAvailabilityStatus,
      required final Image video}) = _$CourseVideoItemImpl;

  factory _CourseVideoItem.fromJson(Map<String, dynamic> json) =
      _$CourseVideoItemImpl.fromJson;

  @override
  int get id;
  @override
  String get videoTitle;
  @override
  int get videoDurationInSeconds;
  @override
  VideoAvailabilityStatus get videoAvailabilityStatus;
  @override
  Image get video;

  /// Create a copy of CourseVideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseVideoItemImplCopyWith<_$CourseVideoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
