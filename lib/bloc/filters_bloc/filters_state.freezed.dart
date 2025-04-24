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
  List<String> get selectedCategories => throw _privateConstructorUsedError;
  List<RangeValues> get selectedDurations => throw _privateConstructorUsedError;

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
      List<String> selectedCategories,
      List<RangeValues> selectedDurations});
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
  }) {
    return _then(_value.copyWith(
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCategories: null == selectedCategories
          ? _value.selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDurations: null == selectedDurations
          ? _value.selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
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
      List<String> selectedCategories,
      List<RangeValues> selectedDurations});
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
  }) {
    return _then(_$FiltersStateImpl(
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDurations: null == selectedDurations
          ? _value._selectedDurations
          : selectedDurations // ignore: cast_nullable_to_non_nullable
              as List<RangeValues>,
    ));
  }
}

/// @nodoc

class _$FiltersStateImpl implements _FiltersState {
  _$FiltersStateImpl(
      {this.priceRange = const RangeValues(0, 400),
      final List<String> selectedCategories = const [],
      final List<RangeValues> selectedDurations = const []})
      : _selectedCategories = selectedCategories,
        _selectedDurations = selectedDurations;

  @override
  @JsonKey()
  final RangeValues priceRange;
  final List<String> _selectedCategories;
  @override
  @JsonKey()
  List<String> get selectedCategories {
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

  @override
  String toString() {
    return 'FiltersState(priceRange: $priceRange, selectedCategories: $selectedCategories, selectedDurations: $selectedDurations)';
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
                .equals(other._selectedDurations, _selectedDurations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      priceRange,
      const DeepCollectionEquality().hash(_selectedCategories),
      const DeepCollectionEquality().hash(_selectedDurations));

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
      final List<String> selectedCategories,
      final List<RangeValues> selectedDurations}) = _$FiltersStateImpl;

  @override
  RangeValues get priceRange;
  @override
  List<String> get selectedCategories;
  @override
  List<RangeValues> get selectedDurations;

  /// Create a copy of FiltersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FiltersStateImplCopyWith<_$FiltersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
