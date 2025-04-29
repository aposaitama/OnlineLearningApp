// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String?,
      user_purchased_courses: (json['user_purchased_courses'] as List<dynamic>)
          .map((e) => CourseBasicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      favourite_items: (json['favourite_items'] as List<dynamic>)
          .map((e) => CourseId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'userPhoneNumber': instance.userPhoneNumber,
      'user_purchased_courses': instance.user_purchased_courses,
      'favourite_items': instance.favourite_items,
    };

_$CourseIdImpl _$$CourseIdImplFromJson(Map<String, dynamic> json) =>
    _$CourseIdImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
    );

Map<String, dynamic> _$$CourseIdImplToJson(_$CourseIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
    };
