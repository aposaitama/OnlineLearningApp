import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:online_app/models/course_basic_model/course_basic_model.dart';

part 'categories_model.freezed.dart';

part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  factory CategoriesModel({
    required int id,
    required String documentId,
    required String categoryTitle,
    required Image categoryImage,
    required String hexBackgroundColor,
    required String hexTitleTextColor,
    required String hexTextBackgroundColor,
    @JsonKey(name: 'course_items')
    required List<CourseBasicModel> courseVideoItems,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
