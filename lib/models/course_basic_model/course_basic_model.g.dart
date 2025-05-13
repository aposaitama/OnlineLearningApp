// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_basic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseBasicModelImpl _$$CourseBasicModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseBasicModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      courseTitle: json['courseTitle'] as String,
      courseImage: Image.fromJson(json['courseImage'] as Map<String, dynamic>),
      courseAuthor: json['courseAuthor'] as String,
      totalCourseDurationInSeconds:
          (json['totalCourseDurationInSeconds'] as num).toInt(),
      coursePrice: (json['coursePrice'] as num).toDouble(),
      courseVideoItems: (json['courseVideoItems'] as List<dynamic>?)
              ?.map((e) => CourseVideoItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      salesCount: (json['salesCount'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseBasicModelImplToJson(
        _$CourseBasicModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'courseTitle': instance.courseTitle,
      'courseImage': instance.courseImage,
      'courseAuthor': instance.courseAuthor,
      'totalCourseDurationInSeconds': instance.totalCourseDurationInSeconds,
      'coursePrice': instance.coursePrice,
      'courseVideoItems': instance.courseVideoItems,
      'salesCount': instance.salesCount,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
