// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesState {
  List<CourseBasicModel> get favouriteCourses =>
      throw _privateConstructorUsedError;

  /// Create a copy of FavouritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call({List<CourseBasicModel> favouriteCourses});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteCourses = null,
  }) {
    return _then(_value.copyWith(
      favouriteCourses: null == favouriteCourses
          ? _value.favouriteCourses
          : favouriteCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesStateImplCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$FavouritesStateImplCopyWith(_$FavouritesStateImpl value,
          $Res Function(_$FavouritesStateImpl) then) =
      __$$FavouritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseBasicModel> favouriteCourses});
}

/// @nodoc
class __$$FavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesStateImpl>
    implements _$$FavouritesStateImplCopyWith<$Res> {
  __$$FavouritesStateImplCopyWithImpl(
      _$FavouritesStateImpl _value, $Res Function(_$FavouritesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteCourses = null,
  }) {
    return _then(_$FavouritesStateImpl(
      favouriteCourses: null == favouriteCourses
          ? _value._favouriteCourses
          : favouriteCourses // ignore: cast_nullable_to_non_nullable
              as List<CourseBasicModel>,
    ));
  }
}

/// @nodoc

class _$FavouritesStateImpl implements _FavouritesState {
  _$FavouritesStateImpl(
      {final List<CourseBasicModel> favouriteCourses = const []})
      : _favouriteCourses = favouriteCourses;

  final List<CourseBasicModel> _favouriteCourses;
  @override
  @JsonKey()
  List<CourseBasicModel> get favouriteCourses {
    if (_favouriteCourses is EqualUnmodifiableListView)
      return _favouriteCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteCourses);
  }

  @override
  String toString() {
    return 'FavouritesState(favouriteCourses: $favouriteCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favouriteCourses, _favouriteCourses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favouriteCourses));

  /// Create a copy of FavouritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      __$$FavouritesStateImplCopyWithImpl<_$FavouritesStateImpl>(
          this, _$identity);
}

abstract class _FavouritesState implements FavouritesState {
  factory _FavouritesState({final List<CourseBasicModel> favouriteCourses}) =
      _$FavouritesStateImpl;

  @override
  List<CourseBasicModel> get favouriteCourses;

  /// Create a copy of FavouritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
