// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouritesCoursesEvent value) getFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouritesCoursesEvent value)? getFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouritesCoursesEvent value)? getFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFavouritesCoursesEventImplCopyWith<$Res> {
  factory _$$GetFavouritesCoursesEventImplCopyWith(
          _$GetFavouritesCoursesEventImpl value,
          $Res Function(_$GetFavouritesCoursesEventImpl) then) =
      __$$GetFavouritesCoursesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavouritesCoursesEventImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$GetFavouritesCoursesEventImpl>
    implements _$$GetFavouritesCoursesEventImplCopyWith<$Res> {
  __$$GetFavouritesCoursesEventImplCopyWithImpl(
      _$GetFavouritesCoursesEventImpl _value,
      $Res Function(_$GetFavouritesCoursesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavouritesCoursesEventImpl implements GetFavouritesCoursesEvent {
  const _$GetFavouritesCoursesEventImpl();

  @override
  String toString() {
    return 'FavouritesEvent.getFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouritesCoursesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavourites,
  }) {
    return getFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavourites,
  }) {
    return getFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavourites,
    required TResult orElse(),
  }) {
    if (getFavourites != null) {
      return getFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouritesCoursesEvent value) getFavourites,
  }) {
    return getFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouritesCoursesEvent value)? getFavourites,
  }) {
    return getFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouritesCoursesEvent value)? getFavourites,
    required TResult orElse(),
  }) {
    if (getFavourites != null) {
      return getFavourites(this);
    }
    return orElse();
  }
}

abstract class GetFavouritesCoursesEvent implements FavouritesEvent {
  const factory GetFavouritesCoursesEvent() = _$GetFavouritesCoursesEventImpl;
}
