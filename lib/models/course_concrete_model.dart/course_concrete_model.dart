import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';

part 'course_concrete_model.freezed.dart';
part 'course_concrete_model.g.dart';

@freezed
class CourseConcreteModel with _$CourseConcreteModel {
  const factory CourseConcreteModel({
    required String documentId,
    required String courseTitle,
    required String courseDescription,
    required Image courseImage,
    required String courseAuthor,
    required int totalCourseDurationInSeconds,
    required double coursePrice,
    required String courseType,
    required List<CourseVideoItem> courseVideoItems,
    // required String courseTitle,
    // required String email,
    // required String? userPhoneNumber,
  }) = _CourseConcreteModel;

  factory CourseConcreteModel.fromJson(Map<String, dynamic> json) =>
      _$CourseConcreteModelFromJson(json);
}

@freezed
class CourseVideoItem with _$CourseVideoItem {
  const factory CourseVideoItem({
    required String videoTitle,
    required int videoDurationInSeconds,
    required String videoAvailabilityStatus,
    required Image video,
  }) = _CourseVideoItem;

  factory CourseVideoItem.fromJson(Map<String, dynamic> json) =>
      _$CourseVideoItemFromJson(json);
}
