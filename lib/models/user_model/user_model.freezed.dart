// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get userPhoneNumber => throw _privateConstructorUsedError;
  List<CourseBasicModel> get user_purchased_courses =>
      throw _privateConstructorUsedError;
  List<CourseId> get favourite_items => throw _privateConstructorUsedError;
  List<CourseVideoItem> get completed_course_videos =>
      throw _privateConstructorUsedError;
  @ImagePathConverter()
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String? userPhoneNumber,
      List<CourseBasicModel> user_purchased_courses,
      List<CourseId> favourite_items,
      List<CourseVideoItem> completed_course_videos,
      @ImagePathConverter() String? avatar});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? userPhoneNumber = freezed,
    Object? user_purchased_courses = null,
    Object? favourite_items = null,
    Object? completed_course_videos = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: freezed == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      user_purchased_courses: null == user_purchased_courses
          ? _value.user_purchased_courses
          : user_purchased_courses // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
      favourite_items: null == favourite_items
          ? _value.favourite_items
          : favourite_items // ignore: cast_nullable_to_non_nullable
              as List<CourseId>,
      completed_course_videos: null == completed_course_videos
          ? _value.completed_course_videos
          : completed_course_videos // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoItem>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      String? userPhoneNumber,
      List<CourseBasicModel> user_purchased_courses,
      List<CourseId> favourite_items,
      List<CourseVideoItem> completed_course_videos,
      @ImagePathConverter() String? avatar});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? userPhoneNumber = freezed,
    Object? user_purchased_courses = null,
    Object? favourite_items = null,
    Object? completed_course_videos = null,
    Object? avatar = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoneNumber: freezed == userPhoneNumber
          ? _value.userPhoneNumber
          : userPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      user_purchased_courses: null == user_purchased_courses
          ? _value._user_purchased_courses
          : user_purchased_courses // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
      favourite_items: null == favourite_items
          ? _value._favourite_items
          : favourite_items // ignore: cast_nullable_to_non_nullable
              as List<CourseId>,
      completed_course_videos: null == completed_course_videos
          ? _value._completed_course_videos
          : completed_course_videos // ignore: cast_nullable_to_non_nullable
              as List<CourseVideoItem>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.userPhoneNumber,
      required final List<CourseBasicModel> user_purchased_courses,
      required final List<CourseId> favourite_items,
      required final List<CourseVideoItem> completed_course_videos,
      @ImagePathConverter() this.avatar})
      : _user_purchased_courses = user_purchased_courses,
        _favourite_items = favourite_items,
        _completed_course_videos = completed_course_videos;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String? userPhoneNumber;
  final List<CourseBasicModel> _user_purchased_courses;
  @override
  List<CourseBasicModel> get user_purchased_courses {
    if (_user_purchased_courses is EqualUnmodifiableListView)
      return _user_purchased_courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user_purchased_courses);
  }

  final List<CourseId> _favourite_items;
  @override
  List<CourseId> get favourite_items {
    if (_favourite_items is EqualUnmodifiableListView) return _favourite_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favourite_items);
  }

  final List<CourseVideoItem> _completed_course_videos;
  @override
  List<CourseVideoItem> get completed_course_videos {
    if (_completed_course_videos is EqualUnmodifiableListView)
      return _completed_course_videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completed_course_videos);
  }

  @override
  @ImagePathConverter()
  final String? avatar;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, userPhoneNumber: $userPhoneNumber, user_purchased_courses: $user_purchased_courses, favourite_items: $favourite_items, completed_course_videos: $completed_course_videos, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userPhoneNumber, userPhoneNumber) ||
                other.userPhoneNumber == userPhoneNumber) &&
            const DeepCollectionEquality().equals(
                other._user_purchased_courses, _user_purchased_courses) &&
            const DeepCollectionEquality()
                .equals(other._favourite_items, _favourite_items) &&
            const DeepCollectionEquality().equals(
                other._completed_course_videos, _completed_course_videos) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      userPhoneNumber,
      const DeepCollectionEquality().hash(_user_purchased_courses),
      const DeepCollectionEquality().hash(_favourite_items),
      const DeepCollectionEquality().hash(_completed_course_videos),
      avatar);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final int id,
      required final String username,
      required final String email,
      required final String? userPhoneNumber,
      required final List<CourseBasicModel> user_purchased_courses,
      required final List<CourseId> favourite_items,
      required final List<CourseVideoItem> completed_course_videos,
      @ImagePathConverter() final String? avatar}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String? get userPhoneNumber;
  @override
  List<CourseBasicModel> get user_purchased_courses;
  @override
  List<CourseId> get favourite_items;
  @override
  List<CourseVideoItem> get completed_course_videos;
  @override
  @ImagePathConverter()
  String? get avatar;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourseId _$CourseIdFromJson(Map<String, dynamic> json) {
  return _CourseId.fromJson(json);
}

/// @nodoc
mixin _$CourseId {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;

  /// Serializes this CourseId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseIdCopyWith<CourseId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseIdCopyWith<$Res> {
  factory $CourseIdCopyWith(CourseId value, $Res Function(CourseId) then) =
      _$CourseIdCopyWithImpl<$Res, CourseId>;
  @useResult
  $Res call({int id, String documentId});
}

/// @nodoc
class _$CourseIdCopyWithImpl<$Res, $Val extends CourseId>
    implements $CourseIdCopyWith<$Res> {
  _$CourseIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseIdImplCopyWith<$Res>
    implements $CourseIdCopyWith<$Res> {
  factory _$$CourseIdImplCopyWith(
          _$CourseIdImpl value, $Res Function(_$CourseIdImpl) then) =
      __$$CourseIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String documentId});
}

/// @nodoc
class __$$CourseIdImplCopyWithImpl<$Res>
    extends _$CourseIdCopyWithImpl<$Res, _$CourseIdImpl>
    implements _$$CourseIdImplCopyWith<$Res> {
  __$$CourseIdImplCopyWithImpl(
      _$CourseIdImpl _value, $Res Function(_$CourseIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
  }) {
    return _then(_$CourseIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseIdImpl implements _CourseId {
  const _$CourseIdImpl({required this.id, required this.documentId});

  factory _$CourseIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseIdImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;

  @override
  String toString() {
    return 'CourseId(id: $id, documentId: $documentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId);

  /// Create a copy of CourseId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseIdImplCopyWith<_$CourseIdImpl> get copyWith =>
      __$$CourseIdImplCopyWithImpl<_$CourseIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseIdImplToJson(
      this,
    );
  }
}

abstract class _CourseId implements CourseId {
  const factory _CourseId(
      {required final int id,
      required final String documentId}) = _$CourseIdImpl;

  factory _CourseId.fromJson(Map<String, dynamic> json) =
      _$CourseIdImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;

  /// Create a copy of CourseId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseIdImplCopyWith<_$CourseIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
