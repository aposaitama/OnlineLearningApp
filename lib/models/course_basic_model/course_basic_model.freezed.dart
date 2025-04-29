// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_basic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseBasicModel _$CourseBasicModelFromJson(Map<String, dynamic> json) {
  return _CourseBasicModel.fromJson(json);
}

/// @nodoc
mixin _$CourseBasicModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get courseTitle => throw _privateConstructorUsedError;
  Image get courseImage => throw _privateConstructorUsedError;
  String get courseAuthor => throw _privateConstructorUsedError;
  int get totalCourseDurationInSeconds => throw _privateConstructorUsedError;
  double get coursePrice => throw _privateConstructorUsedError;

  /// Serializes this CourseBasicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseBasicModelCopyWith<CourseBasicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseBasicModelCopyWith<$Res> {
  factory $CourseBasicModelCopyWith(
          CourseBasicModel value, $Res Function(CourseBasicModel) then) =
      _$CourseBasicModelCopyWithImpl<$Res, CourseBasicModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String courseTitle,
      Image courseImage,
      String courseAuthor,
      int totalCourseDurationInSeconds,
      double coursePrice});

  $ImageCopyWith<$Res> get courseImage;
}

/// @nodoc
class _$CourseBasicModelCopyWithImpl<$Res, $Val extends CourseBasicModel>
    implements $CourseBasicModelCopyWith<$Res> {
  _$CourseBasicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? courseTitle = null,
    Object? courseImage = null,
    Object? courseAuthor = null,
    Object? totalCourseDurationInSeconds = null,
    Object? coursePrice = null,
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
    ) as $Val);
  }

  /// Create a copy of CourseBasicModel
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
abstract class _$$CourseBasicModelImplCopyWith<$Res>
    implements $CourseBasicModelCopyWith<$Res> {
  factory _$$CourseBasicModelImplCopyWith(_$CourseBasicModelImpl value,
          $Res Function(_$CourseBasicModelImpl) then) =
      __$$CourseBasicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String courseTitle,
      Image courseImage,
      String courseAuthor,
      int totalCourseDurationInSeconds,
      double coursePrice});

  @override
  $ImageCopyWith<$Res> get courseImage;
}

/// @nodoc
class __$$CourseBasicModelImplCopyWithImpl<$Res>
    extends _$CourseBasicModelCopyWithImpl<$Res, _$CourseBasicModelImpl>
    implements _$$CourseBasicModelImplCopyWith<$Res> {
  __$$CourseBasicModelImplCopyWithImpl(_$CourseBasicModelImpl _value,
      $Res Function(_$CourseBasicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? courseTitle = null,
    Object? courseImage = null,
    Object? courseAuthor = null,
    Object? totalCourseDurationInSeconds = null,
    Object? coursePrice = null,
  }) {
    return _then(_$CourseBasicModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseBasicModelImpl implements _CourseBasicModel {
  const _$CourseBasicModelImpl(
      {required this.id,
      required this.documentId,
      required this.courseTitle,
      required this.courseImage,
      required this.courseAuthor,
      required this.totalCourseDurationInSeconds,
      required this.coursePrice});

  factory _$CourseBasicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseBasicModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String courseTitle;
  @override
  final Image courseImage;
  @override
  final String courseAuthor;
  @override
  final int totalCourseDurationInSeconds;
  @override
  final double coursePrice;

  @override
  String toString() {
    return 'CourseBasicModel(id: $id, documentId: $documentId, courseTitle: $courseTitle, courseImage: $courseImage, courseAuthor: $courseAuthor, totalCourseDurationInSeconds: $totalCourseDurationInSeconds, coursePrice: $coursePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseBasicModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.courseAuthor, courseAuthor) ||
                other.courseAuthor == courseAuthor) &&
            (identical(other.totalCourseDurationInSeconds,
                    totalCourseDurationInSeconds) ||
                other.totalCourseDurationInSeconds ==
                    totalCourseDurationInSeconds) &&
            (identical(other.coursePrice, coursePrice) ||
                other.coursePrice == coursePrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId, courseTitle,
      courseImage, courseAuthor, totalCourseDurationInSeconds, coursePrice);

  /// Create a copy of CourseBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseBasicModelImplCopyWith<_$CourseBasicModelImpl> get copyWith =>
      __$$CourseBasicModelImplCopyWithImpl<_$CourseBasicModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseBasicModelImplToJson(
      this,
    );
  }
}

abstract class _CourseBasicModel implements CourseBasicModel {
  const factory _CourseBasicModel(
      {required final int id,
      required final String documentId,
      required final String courseTitle,
      required final Image courseImage,
      required final String courseAuthor,
      required final int totalCourseDurationInSeconds,
      required final double coursePrice}) = _$CourseBasicModelImpl;

  factory _CourseBasicModel.fromJson(Map<String, dynamic> json) =
      _$CourseBasicModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get courseTitle;
  @override
  Image get courseImage;
  @override
  String get courseAuthor;
  @override
  int get totalCourseDurationInSeconds;
  @override
  double get coursePrice;

  /// Create a copy of CourseBasicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseBasicModelImplCopyWith<_$CourseBasicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$ImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl({required this.url});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'Image(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({required final String url}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
