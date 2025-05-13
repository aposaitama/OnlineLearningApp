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
      totallyLearningDays: (json['totallyLearningDays'] as num).toInt(),
      totallyLearningHours: (json['totallyLearningHours'] as num).toDouble(),
      learnedToday: (json['learnedToday'] as num).toDouble(),
      userLearningStreak: (json['userLearningStreak'] as num).toInt(),
      lastTimeCheckout: json['lastTimeCheckout'] == null
          ? null
          : DateTime.parse(json['lastTimeCheckout'] as String),
      user_purchased_courses: (json['user_purchased_courses'] as List<dynamic>)
          .map((e) => CourseBasicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      favourite_items: (json['favourite_items'] as List<dynamic>)
          .map((e) => CourseId.fromJson(e as Map<String, dynamic>))
          .toList(),
      completed_course_videos:
          (json['completed_course_videos'] as List<dynamic>)
              .map((e) => CourseVideoItem.fromJson(e as Map<String, dynamic>))
              .toList(),
      message_notifications: (json['message_notifications'] as List<dynamic>)
          .map((e) => MessageNotification.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatar: const ImagePathConverter()
          .fromJson(json['avatar'] as Map<String, dynamic>?),
      creditCards: (json['creditCards'] as List<dynamic>)
          .map((e) => CreditCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'userPhoneNumber': instance.userPhoneNumber,
      'totallyLearningDays': instance.totallyLearningDays,
      'totallyLearningHours': instance.totallyLearningHours,
      'learnedToday': instance.learnedToday,
      'userLearningStreak': instance.userLearningStreak,
      'lastTimeCheckout': instance.lastTimeCheckout?.toIso8601String(),
      'user_purchased_courses': instance.user_purchased_courses,
      'favourite_items': instance.favourite_items,
      'completed_course_videos': instance.completed_course_videos,
      'message_notifications': instance.message_notifications,
      'avatar': _$JsonConverterToJson<Map<String, dynamic>?, String>(
          instance.avatar, const ImagePathConverter().toJson),
      'creditCards': instance.creditCards,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

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

_$MessageNotificationImpl _$$MessageNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageNotificationImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      notificationAuthor: json['notificationAuthor'] as String,
      notificationDescription: json['notificationDescription'] as String,
      notificationAuthorImageUrl: json['notificationAuthorImageUrl'] as String,
      notificationImageUrl: json['notificationImageUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageNotificationImplToJson(
        _$MessageNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'notificationAuthor': instance.notificationAuthor,
      'notificationDescription': instance.notificationDescription,
      'notificationAuthorImageUrl': instance.notificationAuthorImageUrl,
      'notificationImageUrl': instance.notificationImageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreditCardModelImpl _$$CreditCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditCardModelImpl(
      cardNumber: json['cardNumber'] as String,
      expDate: json['expDate'] as String,
    );

Map<String, dynamic> _$$CreditCardModelImplToJson(
        _$CreditCardModelImpl instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'expDate': instance.expDate,
    };
