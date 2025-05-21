import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/utils/converters/date_converter.dart';

part 'local_notification_model.freezed.dart';
part 'local_notification_model.g.dart';

@freezed
class LocalNotificationModel with _$LocalNotificationModel {
  factory LocalNotificationModel({
    required int id,
    required String body,
    @DateConverter() required DateTime date,
    required String notificationType,
}) = _LocalNotificationModel;

  factory LocalNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$LocalNotificationModelFromJson(json);
}