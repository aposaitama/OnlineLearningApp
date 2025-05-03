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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
    required TResult Function(String? enteredText) enterText,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult? Function(String? enteredText)? enterText,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult Function(String? enteredText)? enterText,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoursesEvent value)
        loadSearchedCourses,
    required TResult Function(EnterSearchTextEvent value) enterText,
    required TResult Function(ClearSearchStateEvent value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult? Function(EnterSearchTextEvent value)? enterText,
    TResult? Function(ClearSearchStateEvent value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult Function(EnterSearchTextEvent value)? enterText,
    TResult Function(ClearSearchStateEvent value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenEventCopyWith<$Res> {
  factory $SearchScreenEventCopyWith(
          SearchScreenEvent value, $Res Function(SearchScreenEvent) then) =
      _$SearchScreenEventCopyWithImpl<$Res, SearchScreenEvent>;
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
}

/// @nodoc
abstract class _$$GetSearchedCoursesEventImplCopyWith<$Res> {
  factory _$$GetSearchedCoursesEventImplCopyWith(
          _$GetSearchedCoursesEventImpl value,
          $Res Function(_$GetSearchedCoursesEventImpl) then) =
      __$$GetSearchedCoursesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CategoriesModel> categories,
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
              as List<CategoriesModel>,
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
      {required final List<CategoriesModel> categories,
      required final List<RangeValues> durations,
      required this.priceRange})
      : _categories = categories,
        _durations = durations;

  final List<CategoriesModel> _categories;
  @override
  List<CategoriesModel> get categories {
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
    required TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
    required TResult Function(String? enteredText) enterText,
    required TResult Function() clearState,
  }) {
    return loadSearchedCourses(categories, durations, priceRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult? Function(String? enteredText)? enterText,
    TResult? Function()? clearState,
  }) {
    return loadSearchedCourses?.call(categories, durations, priceRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult Function(String? enteredText)? enterText,
    TResult Function()? clearState,
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
    required TResult Function(EnterSearchTextEvent value) enterText,
    required TResult Function(ClearSearchStateEvent value) clearState,
  }) {
    return loadSearchedCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult? Function(EnterSearchTextEvent value)? enterText,
    TResult? Function(ClearSearchStateEvent value)? clearState,
  }) {
    return loadSearchedCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult Function(EnterSearchTextEvent value)? enterText,
    TResult Function(ClearSearchStateEvent value)? clearState,
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
      {required final List<CategoriesModel> categories,
      required final List<RangeValues> durations,
      required final RangeValues priceRange}) = _$GetSearchedCoursesEventImpl;

  List<CategoriesModel> get categories;
  List<RangeValues> get durations;
  RangeValues get priceRange;

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSearchedCoursesEventImplCopyWith<_$GetSearchedCoursesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterSearchTextEventImplCopyWith<$Res> {
  factory _$$EnterSearchTextEventImplCopyWith(_$EnterSearchTextEventImpl value,
          $Res Function(_$EnterSearchTextEventImpl) then) =
      __$$EnterSearchTextEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? enteredText});
}

/// @nodoc
class __$$EnterSearchTextEventImplCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res, _$EnterSearchTextEventImpl>
    implements _$$EnterSearchTextEventImplCopyWith<$Res> {
  __$$EnterSearchTextEventImplCopyWithImpl(_$EnterSearchTextEventImpl _value,
      $Res Function(_$EnterSearchTextEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enteredText = freezed,
  }) {
    return _then(_$EnterSearchTextEventImpl(
      enteredText: freezed == enteredText
          ? _value.enteredText
          : enteredText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EnterSearchTextEventImpl implements EnterSearchTextEvent {
  const _$EnterSearchTextEventImpl({this.enteredText});

  @override
  final String? enteredText;

  @override
  String toString() {
    return 'SearchScreenEvent.enterText(enteredText: $enteredText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterSearchTextEventImpl &&
            (identical(other.enteredText, enteredText) ||
                other.enteredText == enteredText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enteredText);

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterSearchTextEventImplCopyWith<_$EnterSearchTextEventImpl>
      get copyWith =>
          __$$EnterSearchTextEventImplCopyWithImpl<_$EnterSearchTextEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
    required TResult Function(String? enteredText) enterText,
    required TResult Function() clearState,
  }) {
    return enterText(enteredText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult? Function(String? enteredText)? enterText,
    TResult? Function()? clearState,
  }) {
    return enterText?.call(enteredText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult Function(String? enteredText)? enterText,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (enterText != null) {
      return enterText(enteredText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoursesEvent value)
        loadSearchedCourses,
    required TResult Function(EnterSearchTextEvent value) enterText,
    required TResult Function(ClearSearchStateEvent value) clearState,
  }) {
    return enterText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult? Function(EnterSearchTextEvent value)? enterText,
    TResult? Function(ClearSearchStateEvent value)? clearState,
  }) {
    return enterText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult Function(EnterSearchTextEvent value)? enterText,
    TResult Function(ClearSearchStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (enterText != null) {
      return enterText(this);
    }
    return orElse();
  }
}

abstract class EnterSearchTextEvent implements SearchScreenEvent {
  const factory EnterSearchTextEvent({final String? enteredText}) =
      _$EnterSearchTextEventImpl;

  String? get enteredText;

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterSearchTextEventImplCopyWith<_$EnterSearchTextEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchStateEventImplCopyWith<$Res> {
  factory _$$ClearSearchStateEventImplCopyWith(
          _$ClearSearchStateEventImpl value,
          $Res Function(_$ClearSearchStateEventImpl) then) =
      __$$ClearSearchStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchStateEventImplCopyWithImpl<$Res>
    extends _$SearchScreenEventCopyWithImpl<$Res, _$ClearSearchStateEventImpl>
    implements _$$ClearSearchStateEventImplCopyWith<$Res> {
  __$$ClearSearchStateEventImplCopyWithImpl(_$ClearSearchStateEventImpl _value,
      $Res Function(_$ClearSearchStateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchStateEventImpl implements ClearSearchStateEvent {
  const _$ClearSearchStateEventImpl();

  @override
  String toString() {
    return 'SearchScreenEvent.clearState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSearchStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)
        loadSearchedCourses,
    required TResult Function(String? enteredText) enterText,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult? Function(String? enteredText)? enterText,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CategoriesModel> categories,
            List<RangeValues> durations, RangeValues priceRange)?
        loadSearchedCourses,
    TResult Function(String? enteredText)? enterText,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedCoursesEvent value)
        loadSearchedCourses,
    required TResult Function(EnterSearchTextEvent value) enterText,
    required TResult Function(ClearSearchStateEvent value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult? Function(EnterSearchTextEvent value)? enterText,
    TResult? Function(ClearSearchStateEvent value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedCoursesEvent value)? loadSearchedCourses,
    TResult Function(EnterSearchTextEvent value)? enterText,
    TResult Function(ClearSearchStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class ClearSearchStateEvent implements SearchScreenEvent {
  const factory ClearSearchStateEvent() = _$ClearSearchStateEventImpl;
}
