import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_basic_model.freezed.dart';
part 'course_basic_model.g.dart';

@freezed
class CourseBasicModel with _$CourseBasicModel {
  const factory CourseBasicModel({
    required int id,
    required String documentId,
    required String courseTitle,
    required Image courseImage,
    required String courseAuthor,
    required int totalCourseDurationInSeconds,
    required double coursePrice,
    // required String courseType,
    // required String courseTitle,
    // required String email,
    // required String? userPhoneNumber,
  }) = _CourseBasicModel;

  factory CourseBasicModel.fromJson(Map<String, dynamic> json) =>
      _$CourseBasicModelFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
