// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalNotificationModelImpl _$$LocalNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalNotificationModelImpl(
      id: (json['id'] as num).toInt(),
      body: json['body'] as String,
      date: DateTime.parse(json['date'] as String),
      notificationType: json['notificationType'] as String,
    );

Map<String, dynamic> _$$LocalNotificationModelImplToJson(
        _$LocalNotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'date': instance.date.toIso8601String(),
      'notificationType': instance.notificationType,
    };
