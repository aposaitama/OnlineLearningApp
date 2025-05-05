// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FiltersState {
  RangeValues get priceRange => throw _privateConstructorUsedError;
  List<CategoriesModel> get selectedCategories =>
      throw _privateConstructorUsedError;
  List<RangeValues> get selectedDurations => throw _privateConstructorUsedError;
  List<CategoriesModel> get categories => throw _privateConstructorUsedError;

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FiltersStateCopyWith<FiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FiltersStateCopyWith<$Res> {
  factory $FiltersStateCopyWith(
          FiltersState value, $Res Function(FiltersState) then) =
      _$FiltersStateCopyWithImpl<$Res, FiltersState>;
  @useResult
  $Res call(
      {RangeValues priceRange,
      List<CategoriesModel> selectedCategories,
      List<RangeValues> selectedDurations,
      List<CategoriesModel> categories});
}

/// @nodoc
class _$FiltersStateCopyWithImpl<$Res, $Val extends FiltersState>
    implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = null,
    Object? selectedCategories = null,
    Object? selectedDurations = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCategories: null == selectedCategories
          ? _value.selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      selectedDurations: null == selectedDurations
          ? _value.selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FiltersStateImplCopyWith<$Res>
    implements $FiltersStateCopyWith<$Res> {
  factory _$$FiltersStateImplCopyWith(
          _$FiltersStateImpl value, $Res Function(_$FiltersStateImpl) then) =
      __$$FiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RangeValues priceRange,
      List<CategoriesModel> selectedCategories,
      List<RangeValues> selectedDurations,
      List<CategoriesModel> categories});
}

/// @nodoc
class __$$FiltersStateImplCopyWithImpl<$Res>
    extends _$FiltersStateCopyWithImpl<$Res, _$FiltersStateImpl>
    implements _$$FiltersStateImplCopyWith<$Res> {
  __$$FiltersStateImplCopyWithImpl(
      _$FiltersStateImpl _value, $Res Function(_$FiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = null,
    Object? selectedCategories = null,
    Object? selectedDurations = null,
    Object? categories = null,
  }) {
    return _then(_$FiltersStateImpl(
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
      selectedDurations: null == selectedDurations
          ? _value._selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc

class _$FiltersStateImpl implements _FiltersState {
  _$FiltersStateImpl(
      {this.priceRange = const RangeValues(0, 400),
      final List<CategoriesModel> selectedCategories = const [],
      final List<RangeValues> selectedDurations = const [],
      final List<CategoriesModel> categories = const []})
      : _selectedCategories = selectedCategories,
        _selectedDurations = selectedDurations,
        _categories = categories;

  @override
  @JsonKey()
  final RangeValues priceRange;
  final List<CategoriesModel> _selectedCategories;
  @override
  @JsonKey()
  List<CategoriesModel> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  final List<RangeValues> _selectedDurations;
  @override
  @JsonKey()
  List<RangeValues> get selectedDurations {
    if (_selectedDurations is EqualUnmodifiableListView)
      return _selectedDurations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDurations);
  }

  final List<CategoriesModel> _categories;
  @override
  @JsonKey()
  List<CategoriesModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'FiltersState(priceRange: $priceRange, selectedCategories: $selectedCategories, selectedDurations: $selectedDurations, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiltersStateImpl &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            const DeepCollectionEquality()
                .equals(other._selectedDurations, _selectedDurations) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      priceRange,
      const DeepCollectionEquality().hash(_selectedCategories),
      const DeepCollectionEquality().hash(_selectedDurations),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FiltersStateImplCopyWith<_$FiltersStateImpl> get copyWith =>
      __$$FiltersStateImplCopyWithImpl<_$FiltersStateImpl>(this, _$identity);
}

abstract class _FiltersState implements FiltersState {
  factory _FiltersState(
      {final RangeValues priceRange,
      final List<CategoriesModel> selectedCategories,
      final List<RangeValues> selectedDurations,
      final List<CategoriesModel> categories}) = _$FiltersStateImpl;

  @override
  RangeValues get priceRange;
  @override
  List<CategoriesModel> get selectedCategories;
  @override
  List<RangeValues> get selectedDurations;
  @override
  List<CategoriesModel> get categories;

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FiltersStateImplCopyWith<_$FiltersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
