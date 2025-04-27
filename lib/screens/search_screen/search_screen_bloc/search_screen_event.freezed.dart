// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchScreenEvent {
  List<String> get categories => throw _privateConstructorUsedError;
  List<RangeValues> get durations => throw _privateConstructorUsedError;
  RangeValues get priceRange => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> categories, List<RangeValues> durations,
            RangeValues priceRange)?
        loadSearchedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> categories, List<RangeValues> durations,
            RangeValues priceRange)?
        loadSearchedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoursesEvent value)
        loadSearchedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchScreenEventCopyWith<SearchScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenEventCopyWith<$Res> {
  factory $SearchScreenEventCopyWith(
          SearchScreenEvent value, $Res Function(SearchScreenEvent) then) =
      _$SearchScreenEventCopyWithImpl<$Res, SearchScreenEvent>;
  @useResult
  $Res call(
      {List<String> categories,
      List<RangeValues> durations,
      RangeValues priceRange});
}

/// @nodoc
class _$SearchScreenEventCopyWithImpl<$Res, $Val extends SearchScreenEvent>
    implements $SearchScreenEventCopyWith<$Res> {
  _$SearchScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? durations = null,
    Object? priceRange = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSearchedCoursesEventImplCopyWith<$Res>
    implements $SearchScreenEventCopyWith<$Res> {
  factory _$$GetSearchedCoursesEventImplCopyWith(
          _$GetSearchedCoursesEventImpl value,
          $Res Function(_$GetSearchedCoursesEventImpl) then) =
      __$$GetSearchedCoursesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> categories,
      List<RangeValues> durations,
      RangeValues priceRange});
}

/// @nodoc
class __$$GetSearchedCoursesEventImplCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res, _$GetSearchedCoursesEventImpl>
    implements _$$GetSearchedCoursesEventImplCopyWith<$Res> {
  __$$GetSearchedCoursesEventImplCopyWithImpl(
      _$GetSearchedCoursesEventImpl _value,
      $Res Function(_$GetSearchedCoursesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? durations = null,
    Object? priceRange = null,
  }) {
    return _then(_$GetSearchedCoursesEventImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      durations: null == durations
          ? _value._durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$GetSearchedCoursesEventImpl implements GetSearchedCoursesEvent {
  _$GetSearchedCoursesEventImpl(
      {required final List<String> categories,
      required final List<RangeValues> durations,
      required this.priceRange})
      : _categories = categories,
        _durations = durations;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<RangeValues> _durations;
  @override
  List<RangeValues> get durations {
    if (_durations is EqualUnmodifiableListView) return _durations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  final RangeValues priceRange;

  @override
  String toString() {
    return 'SearchScreenEvent.loadSearchedCourses(categories: $categories, durations: $durations, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchedCoursesEventImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._durations, _durations) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_durations),
      priceRange);

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchedCoursesEventImplCopyWith<_$GetSearchedCoursesEventImpl>
      get copyWith => __$$GetSearchedCoursesEventImplCopyWithImpl<
          _$GetSearchedCoursesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
  }) {
    return loadSearchedCourses(categories, durations, priceRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> categories, List<RangeValues> durations,
            RangeValues priceRange)?
        loadSearchedCourses,
  }) {
    return loadSearchedCourses?.call(categories, durations, priceRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> categories, List<RangeValues> durations,
            RangeValues priceRange)?
        loadSearchedCourses,
    required TResult orElse(),
  }) {
    if (loadSearchedCourses != null) {
      return loadSearchedCourses(categories, durations, priceRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoursesEvent value)
        loadSearchedCourses,
  }) {
    return loadSearchedCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
  }) {
    return loadSearchedCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    required TResult orElse(),
  }) {
    if (loadSearchedCourses != null) {
      return loadSearchedCourses(this);
    }
    return orElse();
  }
}

abstract class GetSearchedCoursesEvent implements SearchScreenEvent {
  factory GetSearchedCoursesEvent(
      {required final List<String> categories,
      required final List<RangeValues> durations,
      required final RangeValues priceRange}) = _$GetSearchedCoursesEventImpl;

  @override
  List<String> get categories;
  @override
  List<RangeValues> get durations;
  @override
  RangeValues get priceRange;

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSearchedCoursesEventImplCopyWith<_$GetSearchedCoursesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
