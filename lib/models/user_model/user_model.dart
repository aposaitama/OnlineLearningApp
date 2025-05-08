import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';
import 'package:online_app/models/course_concrete_model.dart/course_concrete_model.dart';

import '../../utils/converters/image_path_converter.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String email,
    required String? userPhoneNumber,
    required List<CourseBasicModel> user_purchased_courses,
    required List<CourseId> favourite_items,
    required List<CourseVideoItem> completed_course_videos,
    required List<MessageNotification> message_notifications,
    @ImagePathConverter() String? avatar,
    required List<CreditCardModel> creditCards,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class CourseId with _$CourseId {
  const factory CourseId({
    required int id,
    required String documentId,
  }) = _CourseId;

  factory CourseId.fromJson(Map<String, dynamic> json) =>
      _$CourseIdFromJson(json);
}

@freezed
class MessageNotification with _$MessageNotification {
  const factory MessageNotification({
    required int id,
    required String documentId,
    required String notificationAuthor,
    required String notificationDescription,
    required String notificationAuthorImageUrl,
    required String notificationImageUrl,
  }) = _MessageNotification;

  factory MessageNotification.fromJson(Map<String, dynamic> json) =>
      _$MessageNotificationFromJson(json);
}

@freezed
class CreditCardModel with _$CreditCardModel {
  const factory CreditCardModel({
    required String cardNumber,
    required String expDate,
  }) = _CreditCardModel;

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);
}
