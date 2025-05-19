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
  String? get paymentPassword => throw _privateConstructorUsedError;
  int get totallyLearningDays => throw _privateConstructorUsedError;
  double get totallyLearningHours => throw _privateConstructorUsedError;
  double get learnedToday => throw _privateConstructorUsedError;
  int get userLearningStreak => throw _privateConstructorUsedError;
  DateTime? get lastTimeCheckout => throw _privateConstructorUsedError;
  List<CourseBasicModel> get user_purchased_courses =>
      throw _privateConstructorUsedError;
  List<CourseId> get favourite_items => throw _privateConstructorUsedError;
  List<CourseVideoItem> get completed_course_videos =>
      throw _privateConstructorUsedError;
  List<MessageNotification> get message_notifications =>
      throw _privateConstructorUsedError;
  @ImagePathConverter()
  String? get avatar => throw _privateConstructorUsedError;
  List<CreditCardModel> get creditCards => throw _privateConstructorUsedError;

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
      String? paymentPassword,
      int totallyLearningDays,
      double totallyLearningHours,
      double learnedToday,
      int userLearningStreak,
      DateTime? lastTimeCheckout,
      List<CourseBasicModel> user_purchased_courses,
      List<CourseId> favourite_items,
      List<CourseVideoItem> completed_course_videos,
      List<MessageNotification> message_notifications,
      @ImagePathConverter() String? avatar,
      List<CreditCardModel> creditCards});
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
    Object? paymentPassword = freezed,
    Object? totallyLearningDays = null,
    Object? totallyLearningHours = null,
    Object? learnedToday = null,
    Object? userLearningStreak = null,
    Object? lastTimeCheckout = freezed,
    Object? user_purchased_courses = null,
    Object? favourite_items = null,
    Object? completed_course_videos = null,
    Object? message_notifications = null,
    Object? avatar = freezed,
    Object? creditCards = null,
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
      paymentPassword: freezed == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      totallyLearningDays: null == totallyLearningDays
          ? _value.totallyLearningDays
          : totallyLearningDays // ignore: cast_nullable_to_non_nullable
              as int,
      totallyLearningHours: null == totallyLearningHours
          ? _value.totallyLearningHours
          : totallyLearningHours // ignore: cast_nullable_to_non_nullable
              as double,
      learnedToday: null == learnedToday
          ? _value.learnedToday
          : learnedToday // ignore: cast_nullable_to_non_nullable
              as double,
      userLearningStreak: null == userLearningStreak
          ? _value.userLearningStreak
          : userLearningStreak // ignore: cast_nullable_to_non_nullable
              as int,
      lastTimeCheckout: freezed == lastTimeCheckout
          ? _value.lastTimeCheckout
          : lastTimeCheckout // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      message_notifications: null == message_notifications
          ? _value.message_notifications
          : message_notifications // ignore: cast_nullable_to_non_nullable
              as List<MessageNotification>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCards: null == creditCards
          ? _value.creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardModel>,
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
      String? paymentPassword,
      int totallyLearningDays,
      double totallyLearningHours,
      double learnedToday,
      int userLearningStreak,
      DateTime? lastTimeCheckout,
      List<CourseBasicModel> user_purchased_courses,
      List<CourseId> favourite_items,
      List<CourseVideoItem> completed_course_videos,
      List<MessageNotification> message_notifications,
      @ImagePathConverter() String? avatar,
      List<CreditCardModel> creditCards});
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
    Object? paymentPassword = freezed,
    Object? totallyLearningDays = null,
    Object? totallyLearningHours = null,
    Object? learnedToday = null,
    Object? userLearningStreak = null,
    Object? lastTimeCheckout = freezed,
    Object? user_purchased_courses = null,
    Object? favourite_items = null,
    Object? completed_course_videos = null,
    Object? message_notifications = null,
    Object? avatar = freezed,
    Object? creditCards = null,
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
      paymentPassword: freezed == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      totallyLearningDays: null == totallyLearningDays
          ? _value.totallyLearningDays
          : totallyLearningDays // ignore: cast_nullable_to_non_nullable
              as int,
      totallyLearningHours: null == totallyLearningHours
          ? _value.totallyLearningHours
          : totallyLearningHours // ignore: cast_nullable_to_non_nullable
              as double,
      learnedToday: null == learnedToday
          ? _value.learnedToday
          : learnedToday // ignore: cast_nullable_to_non_nullable
              as double,
      userLearningStreak: null == userLearningStreak
          ? _value.userLearningStreak
          : userLearningStreak // ignore: cast_nullable_to_non_nullable
              as int,
      lastTimeCheckout: freezed == lastTimeCheckout
          ? _value.lastTimeCheckout
          : lastTimeCheckout // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      message_notifications: null == message_notifications
          ? _value._message_notifications
          : message_notifications // ignore: cast_nullable_to_non_nullable
              as List<MessageNotification>,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      creditCards: null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditCardModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.userPhoneNumber,
      required this.paymentPassword,
      required this.totallyLearningDays,
      required this.totallyLearningHours,
      required this.learnedToday,
      required this.userLearningStreak,
      required this.lastTimeCheckout,
      required final List<CourseBasicModel> user_purchased_courses,
      required final List<CourseId> favourite_items,
      required final List<CourseVideoItem> completed_course_videos,
      required final List<MessageNotification> message_notifications,
      @ImagePathConverter() this.avatar,
      required final List<CreditCardModel> creditCards})
      : _user_purchased_courses = user_purchased_courses,
        _favourite_items = favourite_items,
        _completed_course_videos = completed_course_videos,
        _message_notifications = message_notifications,
        _creditCards = creditCards;

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
  @override
  final String? paymentPassword;
  @override
  final int totallyLearningDays;
  @override
  final double totallyLearningHours;
  @override
  final double learnedToday;
  @override
  final int userLearningStreak;
  @override
  final DateTime? lastTimeCheckout;
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

  final List<MessageNotification> _message_notifications;
  @override
  List<MessageNotification> get message_notifications {
    if (_message_notifications is EqualUnmodifiableListView)
      return _message_notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message_notifications);
  }

  @override
  @ImagePathConverter()
  final String? avatar;
  final List<CreditCardModel> _creditCards;
  @override
  List<CreditCardModel> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, email: $email, userPhoneNumber: $userPhoneNumber, paymentPassword: $paymentPassword, totallyLearningDays: $totallyLearningDays, totallyLearningHours: $totallyLearningHours, learnedToday: $learnedToday, userLearningStreak: $userLearningStreak, lastTimeCheckout: $lastTimeCheckout, user_purchased_courses: $user_purchased_courses, favourite_items: $favourite_items, completed_course_videos: $completed_course_videos, message_notifications: $message_notifications, avatar: $avatar, creditCards: $creditCards)';
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
            (identical(other.paymentPassword, paymentPassword) ||
                other.paymentPassword == paymentPassword) &&
            (identical(other.totallyLearningDays, totallyLearningDays) ||
                other.totallyLearningDays == totallyLearningDays) &&
            (identical(other.totallyLearningHours, totallyLearningHours) ||
                other.totallyLearningHours == totallyLearningHours) &&
            (identical(other.learnedToday, learnedToday) ||
                other.learnedToday == learnedToday) &&
            (identical(other.userLearningStreak, userLearningStreak) ||
                other.userLearningStreak == userLearningStreak) &&
            (identical(other.lastTimeCheckout, lastTimeCheckout) ||
                other.lastTimeCheckout == lastTimeCheckout) &&
            const DeepCollectionEquality().equals(
                other._user_purchased_courses, _user_purchased_courses) &&
            const DeepCollectionEquality()
                .equals(other._favourite_items, _favourite_items) &&
            const DeepCollectionEquality().equals(
                other._completed_course_videos, _completed_course_videos) &&
            const DeepCollectionEquality()
                .equals(other._message_notifications, _message_notifications) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      userPhoneNumber,
      paymentPassword,
      totallyLearningDays,
      totallyLearningHours,
      learnedToday,
      userLearningStreak,
      lastTimeCheckout,
      const DeepCollectionEquality().hash(_user_purchased_courses),
      const DeepCollectionEquality().hash(_favourite_items),
      const DeepCollectionEquality().hash(_completed_course_videos),
      const DeepCollectionEquality().hash(_message_notifications),
      avatar,
      const DeepCollectionEquality().hash(_creditCards));

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
  const factory _UserModel(
      {required final int id,
      required final String username,
      required final String email,
      required final String? userPhoneNumber,
      required final String? paymentPassword,
      required final int totallyLearningDays,
      required final double totallyLearningHours,
      required final double learnedToday,
      required final int userLearningStreak,
      required final DateTime? lastTimeCheckout,
      required final List<CourseBasicModel> user_purchased_courses,
      required final List<CourseId> favourite_items,
      required final List<CourseVideoItem> completed_course_videos,
      required final List<MessageNotification> message_notifications,
      @ImagePathConverter() final String? avatar,
      required final List<CreditCardModel> creditCards}) = _$UserModelImpl;

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
  String? get paymentPassword;
  @override
  int get totallyLearningDays;
  @override
  double get totallyLearningHours;
  @override
  double get learnedToday;
  @override
  int get userLearningStreak;
  @override
  DateTime? get lastTimeCheckout;
  @override
  List<CourseBasicModel> get user_purchased_courses;
  @override
  List<CourseId> get favourite_items;
  @override
  List<CourseVideoItem> get completed_course_videos;
  @override
  List<MessageNotification> get message_notifications;
  @override
  @ImagePathConverter()
  String? get avatar;
  @override
  List<CreditCardModel> get creditCards;

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

MessageNotification _$MessageNotificationFromJson(Map<String, dynamic> json) {
  return _MessageNotification.fromJson(json);
}

/// @nodoc
mixin _$MessageNotification {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get notificationAuthor => throw _privateConstructorUsedError;
  String get notificationDescription => throw _privateConstructorUsedError;
  String get notificationAuthorImageUrl => throw _privateConstructorUsedError;
  String get notificationImageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MessageNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageNotificationCopyWith<MessageNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageNotificationCopyWith<$Res> {
  factory $MessageNotificationCopyWith(
          MessageNotification value, $Res Function(MessageNotification) then) =
      _$MessageNotificationCopyWithImpl<$Res, MessageNotification>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String notificationAuthor,
      String notificationDescription,
      String notificationAuthorImageUrl,
      String notificationImageUrl,
      DateTime createdAt});
}

/// @nodoc
class _$MessageNotificationCopyWithImpl<$Res, $Val extends MessageNotification>
    implements $MessageNotificationCopyWith<$Res> {
  _$MessageNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? notificationAuthor = null,
    Object? notificationDescription = null,
    Object? notificationAuthorImageUrl = null,
    Object? notificationImageUrl = null,
    Object? createdAt = null,
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
      notificationAuthor: null == notificationAuthor
          ? _value.notificationAuthor
          : notificationAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      notificationDescription: null == notificationDescription
          ? _value.notificationDescription
          : notificationDescription // ignore: cast_nullable_to_non_nullable
              as String,
      notificationAuthorImageUrl: null == notificationAuthorImageUrl
          ? _value.notificationAuthorImageUrl
          : notificationAuthorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationImageUrl: null == notificationImageUrl
          ? _value.notificationImageUrl
          : notificationImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageNotificationImplCopyWith<$Res>
    implements $MessageNotificationCopyWith<$Res> {
  factory _$$MessageNotificationImplCopyWith(_$MessageNotificationImpl value,
          $Res Function(_$MessageNotificationImpl) then) =
      __$$MessageNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String notificationAuthor,
      String notificationDescription,
      String notificationAuthorImageUrl,
      String notificationImageUrl,
      DateTime createdAt});
}

/// @nodoc
class __$$MessageNotificationImplCopyWithImpl<$Res>
    extends _$MessageNotificationCopyWithImpl<$Res, _$MessageNotificationImpl>
    implements _$$MessageNotificationImplCopyWith<$Res> {
  __$$MessageNotificationImplCopyWithImpl(_$MessageNotificationImpl _value,
      $Res Function(_$MessageNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? notificationAuthor = null,
    Object? notificationDescription = null,
    Object? notificationAuthorImageUrl = null,
    Object? notificationImageUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$MessageNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      notificationAuthor: null == notificationAuthor
          ? _value.notificationAuthor
          : notificationAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      notificationDescription: null == notificationDescription
          ? _value.notificationDescription
          : notificationDescription // ignore: cast_nullable_to_non_nullable
              as String,
      notificationAuthorImageUrl: null == notificationAuthorImageUrl
          ? _value.notificationAuthorImageUrl
          : notificationAuthorImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationImageUrl: null == notificationImageUrl
          ? _value.notificationImageUrl
          : notificationImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageNotificationImpl implements _MessageNotification {
  const _$MessageNotificationImpl(
      {required this.id,
      required this.documentId,
      required this.notificationAuthor,
      required this.notificationDescription,
      required this.notificationAuthorImageUrl,
      required this.notificationImageUrl,
      required this.createdAt});

  factory _$MessageNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String notificationAuthor;
  @override
  final String notificationDescription;
  @override
  final String notificationAuthorImageUrl;
  @override
  final String notificationImageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MessageNotification(id: $id, documentId: $documentId, notificationAuthor: $notificationAuthor, notificationDescription: $notificationDescription, notificationAuthorImageUrl: $notificationAuthorImageUrl, notificationImageUrl: $notificationImageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.notificationAuthor, notificationAuthor) ||
                other.notificationAuthor == notificationAuthor) &&
            (identical(
                    other.notificationDescription, notificationDescription) ||
                other.notificationDescription == notificationDescription) &&
            (identical(other.notificationAuthorImageUrl,
                    notificationAuthorImageUrl) ||
                other.notificationAuthorImageUrl ==
                    notificationAuthorImageUrl) &&
            (identical(other.notificationImageUrl, notificationImageUrl) ||
                other.notificationImageUrl == notificationImageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      documentId,
      notificationAuthor,
      notificationDescription,
      notificationAuthorImageUrl,
      notificationImageUrl,
      createdAt);

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageNotificationImplCopyWith<_$MessageNotificationImpl> get copyWith =>
      __$$MessageNotificationImplCopyWithImpl<_$MessageNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageNotificationImplToJson(
      this,
    );
  }
}

abstract class _MessageNotification implements MessageNotification {
  const factory _MessageNotification(
      {required final int id,
      required final String documentId,
      required final String notificationAuthor,
      required final String notificationDescription,
      required final String notificationAuthorImageUrl,
      required final String notificationImageUrl,
      required final DateTime createdAt}) = _$MessageNotificationImpl;

  factory _MessageNotification.fromJson(Map<String, dynamic> json) =
      _$MessageNotificationImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get notificationAuthor;
  @override
  String get notificationDescription;
  @override
  String get notificationAuthorImageUrl;
  @override
  String get notificationImageUrl;
  @override
  DateTime get createdAt;

  /// Create a copy of MessageNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageNotificationImplCopyWith<_$MessageNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) {
  return _CreditCardModel.fromJson(json);
}

/// @nodoc
mixin _$CreditCardModel {
  String get cardNumber => throw _privateConstructorUsedError;
  String get expDate => throw _privateConstructorUsedError;

  /// Serializes this CreditCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditCardModelCopyWith<CreditCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardModelCopyWith<$Res> {
  factory $CreditCardModelCopyWith(
          CreditCardModel value, $Res Function(CreditCardModel) then) =
      _$CreditCardModelCopyWithImpl<$Res, CreditCardModel>;
  @useResult
  $Res call({String cardNumber, String expDate});
}

/// @nodoc
class _$CreditCardModelCopyWithImpl<$Res, $Val extends CreditCardModel>
    implements $CreditCardModelCopyWith<$Res> {
  _$CreditCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expDate = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expDate: null == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardModelImplCopyWith<$Res>
    implements $CreditCardModelCopyWith<$Res> {
  factory _$$CreditCardModelImplCopyWith(_$CreditCardModelImpl value,
          $Res Function(_$CreditCardModelImpl) then) =
      __$$CreditCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cardNumber, String expDate});
}

/// @nodoc
class __$$CreditCardModelImplCopyWithImpl<$Res>
    extends _$CreditCardModelCopyWithImpl<$Res, _$CreditCardModelImpl>
    implements _$$CreditCardModelImplCopyWith<$Res> {
  __$$CreditCardModelImplCopyWithImpl(
      _$CreditCardModelImpl _value, $Res Function(_$CreditCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expDate = null,
  }) {
    return _then(_$CreditCardModelImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expDate: null == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditCardModelImpl implements _CreditCardModel {
  const _$CreditCardModelImpl(
      {required this.cardNumber, required this.expDate});

  factory _$CreditCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditCardModelImplFromJson(json);

  @override
  final String cardNumber;
  @override
  final String expDate;

  @override
  String toString() {
    return 'CreditCardModel(cardNumber: $cardNumber, expDate: $expDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardModelImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expDate, expDate) || other.expDate == expDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, expDate);

  /// Create a copy of CreditCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardModelImplCopyWith<_$CreditCardModelImpl> get copyWith =>
      __$$CreditCardModelImplCopyWithImpl<_$CreditCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditCardModelImplToJson(
      this,
    );
  }
}

abstract class _CreditCardModel implements CreditCardModel {
  const factory _CreditCardModel(
      {required final String cardNumber,
      required final String expDate}) = _$CreditCardModelImpl;

  factory _CreditCardModel.fromJson(Map<String, dynamic> json) =
      _$CreditCardModelImpl.fromJson;

  @override
  String get cardNumber;
  @override
  String get expDate;

  /// Create a copy of CreditCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditCardModelImplCopyWith<_$CreditCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
