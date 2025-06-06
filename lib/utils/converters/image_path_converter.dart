import 'package:freezed_annotation/freezed_annotation.dart';

class ImagePathConverter
    implements JsonConverter<String, Map<String, dynamic>?> {
  const ImagePathConverter();

  @override
  String fromJson(Map<String, dynamic>? json) {
    if (json == null || json['url'] == null) {
      return '';
    } else {
      return 'https://learning.demodev.cc${json['url']}';
    }
  }

  @override
  Map<String, dynamic>? toJson(String object) {
    return null;
  }
}
