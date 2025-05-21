import 'package:freezed_annotation/freezed_annotation.dart';

class DateConverter implements JsonConverter<DateTime, String?> {
  const DateConverter();

  @override
  fromJson(String? json) {
    return DateTime.parse(json!).toLocal();
  }

  @override
  toJson(object) {
    return null;
  }
}