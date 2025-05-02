// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      categoryTitle: json['categoryTitle'] as String,
      categoryImage:
          Image.fromJson(json['categoryImage'] as Map<String, dynamic>),
      hexBackgroundColor: json['hexBackgroundColor'] as String,
      hexTitleTextColor: json['hexTitleTextColor'] as String,
      hexTextBackgroundColor: json['hexTextBackgroundColor'] as String,
    );

Map<String, dynamic> _$$CategoriesModelImplToJson(
        _$CategoriesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'categoryTitle': instance.categoryTitle,
      'categoryImage': instance.categoryImage,
      'hexBackgroundColor': instance.hexBackgroundColor,
      'hexTitleTextColor': instance.hexTitleTextColor,
      'hexTextBackgroundColor': instance.hexTextBackgroundColor,
    };
