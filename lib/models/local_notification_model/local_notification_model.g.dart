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
      date: const DateConverter().fromJson(json['date'] as String?),
      notificationType:
          $enumDecode(_$NotificationTypeEnumMap, json['notificationType']),
    );

Map<String, dynamic> _$$LocalNotificationModelImplToJson(
        _$LocalNotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'date': const DateConverter().toJson(instance.date),
      'notificationType': _$NotificationTypeEnumMap[instance.notificationType]!,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.card: 'card',
  NotificationType.info: 'info',
};
