// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_concrete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseConcreteModelImpl _$$CourseConcreteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseConcreteModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      courseTitle: json['courseTitle'] as String,
      courseDescription: json['courseDescription'] as String,
      courseImage: Image.fromJson(json['courseImage'] as Map<String, dynamic>),
      courseAuthor: json['courseAuthor'] as String,
      totalCourseDurationInSeconds:
          (json['totalCourseDurationInSeconds'] as num).toInt(),
      coursePrice: (json['coursePrice'] as num).toDouble(),
      courseType: json['courseType'] as String,
      courseVideoItems: (json['courseVideoItems'] as List<dynamic>)
          .map((e) => CourseVideoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseConcreteModelImplToJson(
        _$CourseConcreteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'courseTitle': instance.courseTitle,
      'courseDescription': instance.courseDescription,
      'courseImage': instance.courseImage,
      'courseAuthor': instance.courseAuthor,
      'totalCourseDurationInSeconds': instance.totalCourseDurationInSeconds,
      'coursePrice': instance.coursePrice,
      'courseType': instance.courseType,
      'courseVideoItems': instance.courseVideoItems,
    };

_$CourseVideoItemImpl _$$CourseVideoItemImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseVideoItemImpl(
      id: (json['id'] as num).toInt(),
      videoTitle: json['videoTitle'] as String,
      videoDurationInSeconds: (json['videoDurationInSeconds'] as num).toInt(),
      videoAvailabilityStatus: $enumDecode(
          _$VideoAvailabilityStatusEnumMap, json['videoAvailabilityStatus']),
      video: Image.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseVideoItemImplToJson(
        _$CourseVideoItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoTitle': instance.videoTitle,
      'videoDurationInSeconds': instance.videoDurationInSeconds,
      'videoAvailabilityStatus':
          _$VideoAvailabilityStatusEnumMap[instance.videoAvailabilityStatus]!,
      'video': instance.video,
    };

const _$VideoAvailabilityStatusEnumMap = {
  VideoAvailabilityStatus.available: 'available',
  VideoAvailabilityStatus.requiresPurchase: 'requiresPurchase',
};
