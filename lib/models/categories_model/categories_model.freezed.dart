// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get categoryTitle => throw _privateConstructorUsedError;
  Image get categoryImage => throw _privateConstructorUsedError;
  String get hexBackgroundColor => throw _privateConstructorUsedError;
  String get hexTitleTextColor => throw _privateConstructorUsedError;

  /// Serializes this CategoriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String categoryTitle,
      Image categoryImage,
      String hexBackgroundColor,
      String hexTitleTextColor});

  $ImageCopyWith<$Res> get categoryImage;
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? categoryTitle = null,
    Object? categoryImage = null,
    Object? hexBackgroundColor = null,
    Object? hexTitleTextColor = null,
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
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImage: null == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as Image,
      hexBackgroundColor: null == hexBackgroundColor
          ? _value.hexBackgroundColor
          : hexBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      hexTitleTextColor: null == hexTitleTextColor
          ? _value.hexTitleTextColor
          : hexTitleTextColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get categoryImage {
    return $ImageCopyWith<$Res>(_value.categoryImage, (value) {
      return _then(_value.copyWith(categoryImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoriesModelImplCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$CategoriesModelImplCopyWith(_$CategoriesModelImpl value,
          $Res Function(_$CategoriesModelImpl) then) =
      __$$CategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String categoryTitle,
      Image categoryImage,
      String hexBackgroundColor,
      String hexTitleTextColor});

  @override
  $ImageCopyWith<$Res> get categoryImage;
}

/// @nodoc
class __$$CategoriesModelImplCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$CategoriesModelImpl>
    implements _$$CategoriesModelImplCopyWith<$Res> {
  __$$CategoriesModelImplCopyWithImpl(
      _$CategoriesModelImpl _value, $Res Function(_$CategoriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? categoryTitle = null,
    Object? categoryImage = null,
    Object? hexBackgroundColor = null,
    Object? hexTitleTextColor = null,
  }) {
    return _then(_$CategoriesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImage: null == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as Image,
      hexBackgroundColor: null == hexBackgroundColor
          ? _value.hexBackgroundColor
          : hexBackgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      hexTitleTextColor: null == hexTitleTextColor
          ? _value.hexTitleTextColor
          : hexTitleTextColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesModelImpl implements _CategoriesModel {
  const _$CategoriesModelImpl(
      {required this.id,
      required this.documentId,
      required this.categoryTitle,
      required this.categoryImage,
      required this.hexBackgroundColor,
      required this.hexTitleTextColor});

  factory _$CategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String categoryTitle;
  @override
  final Image categoryImage;
  @override
  final String hexBackgroundColor;
  @override
  final String hexTitleTextColor;

  @override
  String toString() {
    return 'CategoriesModel(id: $id, documentId: $documentId, categoryTitle: $categoryTitle, categoryImage: $categoryImage, hexBackgroundColor: $hexBackgroundColor, hexTitleTextColor: $hexTitleTextColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.categoryImage, categoryImage) ||
                other.categoryImage == categoryImage) &&
            (identical(other.hexBackgroundColor, hexBackgroundColor) ||
                other.hexBackgroundColor == hexBackgroundColor) &&
            (identical(other.hexTitleTextColor, hexTitleTextColor) ||
                other.hexTitleTextColor == hexTitleTextColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId, categoryTitle,
      categoryImage, hexBackgroundColor, hexTitleTextColor);

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      __$$CategoriesModelImplCopyWithImpl<_$CategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {required final int id,
      required final String documentId,
      required final String categoryTitle,
      required final Image categoryImage,
      required final String hexBackgroundColor,
      required final String hexTitleTextColor}) = _$CategoriesModelImpl;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get categoryTitle;
  @override
  Image get categoryImage;
  @override
  String get hexBackgroundColor;
  @override
  String get hexTitleTextColor;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
