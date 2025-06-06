// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersEventCopyWith<$Res> {
  factory $FiltersEventCopyWith(
          FiltersEvent value, $Res Function(FiltersEvent) then) =
      _$FiltersEventCopyWithImpl<$Res, FiltersEvent>;
}

/// @nodoc
class _$FiltersEventCopyWithImpl<$Res, $Val extends FiltersEvent>
    implements $FiltersEventCopyWith<$Res> {
  _$FiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectPriceRangeEventImplCopyWith<$Res> {
  factory _$$SelectPriceRangeEventImplCopyWith(
          _$SelectPriceRangeEventImpl value,
          $Res Function(_$SelectPriceRangeEventImpl) then) =
      __$$SelectPriceRangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RangeValues priceRange});
}

/// @nodoc
class __$$SelectPriceRangeEventImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$SelectPriceRangeEventImpl>
    implements _$$SelectPriceRangeEventImplCopyWith<$Res> {
  __$$SelectPriceRangeEventImplCopyWithImpl(_$SelectPriceRangeEventImpl _value,
      $Res Function(_$SelectPriceRangeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = null,
  }) {
    return _then(_$SelectPriceRangeEventImpl(
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$SelectPriceRangeEventImpl implements SelectPriceRangeEvent {
  const _$SelectPriceRangeEventImpl({required this.priceRange});

  @override
  final RangeValues priceRange;

  @override
  String toString() {
    return 'FiltersEvent.selectPriceRange(priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPriceRangeEventImpl &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceRange);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPriceRangeEventImplCopyWith<_$SelectPriceRangeEventImpl>
      get copyWith => __$$SelectPriceRangeEventImplCopyWithImpl<
          _$SelectPriceRangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) {
    return selectPriceRange(priceRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) {
    return selectPriceRange?.call(priceRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (selectPriceRange != null) {
      return selectPriceRange(priceRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) {
    return selectPriceRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) {
    return selectPriceRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (selectPriceRange != null) {
      return selectPriceRange(this);
    }
    return orElse();
  }
}

abstract class SelectPriceRangeEvent implements FiltersEvent {
  const factory SelectPriceRangeEvent({required final RangeValues priceRange}) =
      _$SelectPriceRangeEventImpl;

  RangeValues get priceRange;

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectPriceRangeEventImplCopyWith<_$SelectPriceRangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCategoriesEventImplCopyWith<$Res> {
  factory _$$SelectCategoriesEventImplCopyWith(
          _$SelectCategoriesEventImpl value,
          $Res Function(_$SelectCategoriesEventImpl) then) =
      __$$SelectCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoriesModel category});

  $CategoriesModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$SelectCategoriesEventImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$SelectCategoriesEventImpl>
    implements _$$SelectCategoriesEventImplCopyWith<$Res> {
  __$$SelectCategoriesEventImplCopyWithImpl(_$SelectCategoriesEventImpl _value,
      $Res Function(_$SelectCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectCategoriesEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoriesModel,
    ));
  }

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesModelCopyWith<$Res> get category {
    return $CategoriesModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$SelectCategoriesEventImpl implements SelectCategoriesEvent {
  const _$SelectCategoriesEventImpl({required this.category});

  @override
  final CategoriesModel category;

  @override
  String toString() {
    return 'FiltersEvent.selectCategories(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCategoriesEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCategoriesEventImplCopyWith<_$SelectCategoriesEventImpl>
      get copyWith => __$$SelectCategoriesEventImplCopyWithImpl<
          _$SelectCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) {
    return selectCategories(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) {
    return selectCategories?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (selectCategories != null) {
      return selectCategories(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) {
    return selectCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) {
    return selectCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (selectCategories != null) {
      return selectCategories(this);
    }
    return orElse();
  }
}

abstract class SelectCategoriesEvent implements FiltersEvent {
  const factory SelectCategoriesEvent(
      {required final CategoriesModel category}) = _$SelectCategoriesEventImpl;

  CategoriesModel get category;

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCategoriesEventImplCopyWith<_$SelectCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDurationEventImplCopyWith<$Res> {
  factory _$$SelectDurationEventImplCopyWith(_$SelectDurationEventImpl value,
          $Res Function(_$SelectDurationEventImpl) then) =
      __$$SelectDurationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RangeValues duration});
}

/// @nodoc
class __$$SelectDurationEventImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$SelectDurationEventImpl>
    implements _$$SelectDurationEventImplCopyWith<$Res> {
  __$$SelectDurationEventImplCopyWithImpl(_$SelectDurationEventImpl _value,
      $Res Function(_$SelectDurationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$SelectDurationEventImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _$SelectDurationEventImpl implements SelectDurationEvent {
  const _$SelectDurationEventImpl({required this.duration});

  @override
  final RangeValues duration;

  @override
  String toString() {
    return 'FiltersEvent.selectDurations(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDurationEventImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDurationEventImplCopyWith<_$SelectDurationEventImpl> get copyWith =>
      __$$SelectDurationEventImplCopyWithImpl<_$SelectDurationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) {
    return selectDurations(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) {
    return selectDurations?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (selectDurations != null) {
      return selectDurations(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) {
    return selectDurations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) {
    return selectDurations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (selectDurations != null) {
      return selectDurations(this);
    }
    return orElse();
  }
}

abstract class SelectDurationEvent implements FiltersEvent {
  const factory SelectDurationEvent({required final RangeValues duration}) =
      _$SelectDurationEventImpl;

  RangeValues get duration;

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDurationEventImplCopyWith<_$SelectDurationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFiltersStateEventImplCopyWith<$Res> {
  factory _$$ClearFiltersStateEventImplCopyWith(
          _$ClearFiltersStateEventImpl value,
          $Res Function(_$ClearFiltersStateEventImpl) then) =
      __$$ClearFiltersStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFiltersStateEventImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$ClearFiltersStateEventImpl>
    implements _$$ClearFiltersStateEventImplCopyWith<$Res> {
  __$$ClearFiltersStateEventImplCopyWithImpl(
      _$ClearFiltersStateEventImpl _value,
      $Res Function(_$ClearFiltersStateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFiltersStateEventImpl implements ClearFiltersStateEvent {
  const _$ClearFiltersStateEventImpl();

  @override
  String toString() {
    return 'FiltersEvent.clearFiltersState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFiltersStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) {
    return clearFiltersState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) {
    return clearFiltersState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (clearFiltersState != null) {
      return clearFiltersState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) {
    return clearFiltersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) {
    return clearFiltersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (clearFiltersState != null) {
      return clearFiltersState(this);
    }
    return orElse();
  }
}

abstract class ClearFiltersStateEvent implements FiltersEvent {
  const factory ClearFiltersStateEvent() = _$ClearFiltersStateEventImpl;
}

/// @nodoc
abstract class _$$GetCategoriesOnFiltersEventImplCopyWith<$Res> {
  factory _$$GetCategoriesOnFiltersEventImplCopyWith(
          _$GetCategoriesOnFiltersEventImpl value,
          $Res Function(_$GetCategoriesOnFiltersEventImpl) then) =
      __$$GetCategoriesOnFiltersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesOnFiltersEventImplCopyWithImpl<$Res>
    extends _$FiltersEventCopyWithImpl<$Res, _$GetCategoriesOnFiltersEventImpl>
    implements _$$GetCategoriesOnFiltersEventImplCopyWith<$Res> {
  __$$GetCategoriesOnFiltersEventImplCopyWithImpl(
      _$GetCategoriesOnFiltersEventImpl _value,
      $Res Function(_$GetCategoriesOnFiltersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesOnFiltersEventImpl implements GetCategoriesOnFiltersEvent {
  const _$GetCategoriesOnFiltersEventImpl();

  @override
  String toString() {
    return 'FiltersEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesOnFiltersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeValues priceRange) selectPriceRange,
    required TResult Function(CategoriesModel category) selectCategories,
    required TResult Function(RangeValues duration) selectDurations,
    required TResult Function() clearFiltersState,
    required TResult Function() getCategories,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeValues priceRange)? selectPriceRange,
    TResult? Function(CategoriesModel category)? selectCategories,
    TResult? Function(RangeValues duration)? selectDurations,
    TResult? Function()? clearFiltersState,
    TResult? Function()? getCategories,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeValues priceRange)? selectPriceRange,
    TResult Function(CategoriesModel category)? selectCategories,
    TResult Function(RangeValues duration)? selectDurations,
    TResult Function()? clearFiltersState,
    TResult Function()? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectPriceRangeEvent value) selectPriceRange,
    required TResult Function(SelectCategoriesEvent value) selectCategories,
    required TResult Function(SelectDurationEvent value) selectDurations,
    required TResult Function(ClearFiltersStateEvent value) clearFiltersState,
    required TResult Function(GetCategoriesOnFiltersEvent value) getCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult? Function(SelectCategoriesEvent value)? selectCategories,
    TResult? Function(SelectDurationEvent value)? selectDurations,
    TResult? Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult? Function(GetCategoriesOnFiltersEvent value)? getCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectPriceRangeEvent value)? selectPriceRange,
    TResult Function(SelectCategoriesEvent value)? selectCategories,
    TResult Function(SelectDurationEvent value)? selectDurations,
    TResult Function(ClearFiltersStateEvent value)? clearFiltersState,
    TResult Function(GetCategoriesOnFiltersEvent value)? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesOnFiltersEvent implements FiltersEvent {
  const factory GetCategoriesOnFiltersEvent() =
      _$GetCategoriesOnFiltersEventImpl;
}
