// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchScreenState {
  List<CourseBasicModel> get coursesList => throw _privateConstructorUsedError;
  SearchListStatus get coursesListStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res, SearchScreenState>;
  @useResult
  $Res call(
      {List<CourseBasicModel> coursesList,
      SearchListStatus coursesListStatus,
      String? errorMessage});
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res, $Val extends SearchScreenState>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesList = null,
    Object? coursesListStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      coursesList: null == coursesList
          ? _value.coursesList
          : coursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
      coursesListStatus: null == coursesListStatus
          ? _value.coursesListStatus
          : coursesListStatus // ignore: cast_nullable_to_non_nullable
              as SearchListStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchScreenStateImplCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$$SearchScreenStateImplCopyWith(_$SearchScreenStateImpl value,
          $Res Function(_$SearchScreenStateImpl) then) =
      __$$SearchScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CourseBasicModel> coursesList,
      SearchListStatus coursesListStatus,
      String? errorMessage});
}

/// @nodoc
class __$$SearchScreenStateImplCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res, _$SearchScreenStateImpl>
    implements _$$SearchScreenStateImplCopyWith<$Res> {
  __$$SearchScreenStateImplCopyWithImpl(_$SearchScreenStateImpl _value,
      $Res Function(_$SearchScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesList = null,
    Object? coursesListStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchScreenStateImpl(
      coursesList: null == coursesList
          ? _value._coursesList
          : coursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
      coursesListStatus: null == coursesListStatus
          ? _value.coursesListStatus
          : coursesListStatus // ignore: cast_nullable_to_non_nullable
              as SearchListStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchScreenStateImpl implements _SearchScreenState {
  _$SearchScreenStateImpl(
      {final List<CourseBasicModel> coursesList = const [],
      this.coursesListStatus = SearchListStatus.initial,
      this.errorMessage})
      : _coursesList = coursesList;

  final List<CourseBasicModel> _coursesList;
  @override
  @JsonKey()
  List<CourseBasicModel> get coursesList {
    if (_coursesList is EqualUnmodifiableListView) return _coursesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coursesList);
  }

  @override
  @JsonKey()
  final SearchListStatus coursesListStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchScreenState(coursesList: $coursesList, coursesListStatus: $coursesListStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._coursesList, _coursesList) &&
            (identical(other.coursesListStatus, coursesListStatus) ||
                other.coursesListStatus == coursesListStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coursesList),
      coursesListStatus,
      errorMessage);

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchScreenStateImplCopyWith<_$SearchScreenStateImpl> get copyWith =>
      __$$SearchScreenStateImplCopyWithImpl<_$SearchScreenStateImpl>(
          this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  factory _SearchScreenState(
      {final List<CourseBasicModel> coursesList,
      final SearchListStatus coursesListStatus,
      final String? errorMessage}) = _$SearchScreenStateImpl;

  @override
  List<CourseBasicModel> get coursesList;
  @override
  SearchListStatus get coursesListStatus;
  @override
  String? get errorMessage;

  /// Create a copy of SearchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchScreenStateImplCopyWith<_$SearchScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
