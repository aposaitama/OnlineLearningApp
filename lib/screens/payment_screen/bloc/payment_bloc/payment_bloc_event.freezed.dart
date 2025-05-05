// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentBlocEvent {
  String get cardNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentBlocEventCopyWith<PaymentBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBlocEventCopyWith<$Res> {
  factory $PaymentBlocEventCopyWith(
          PaymentBlocEvent value, $Res Function(PaymentBlocEvent) then) =
      _$PaymentBlocEventCopyWithImpl<$Res, PaymentBlocEvent>;
  @useResult
  $Res call({String cardNumber});
}

/// @nodoc
class _$PaymentBlocEventCopyWithImpl<$Res, $Val extends PaymentBlocEvent>
    implements $PaymentBlocEventCopyWith<$Res> {
  _$PaymentBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCreditCardEventImplCopyWith<$Res>
    implements $PaymentBlocEventCopyWith<$Res> {
  factory _$$AddCreditCardEventImplCopyWith(_$AddCreditCardEventImpl value,
          $Res Function(_$AddCreditCardEventImpl) then) =
      __$$AddCreditCardEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cardNumber, String expDate});
}

/// @nodoc
class __$$AddCreditCardEventImplCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$AddCreditCardEventImpl>
    implements _$$AddCreditCardEventImplCopyWith<$Res> {
  __$$AddCreditCardEventImplCopyWithImpl(_$AddCreditCardEventImpl _value,
      $Res Function(_$AddCreditCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expDate = null,
  }) {
    return _then(_$AddCreditCardEventImpl(
      null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == expDate
          ? _value.expDate
          : expDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCreditCardEventImpl implements AddCreditCardEvent {
  const _$AddCreditCardEventImpl(this.cardNumber, this.expDate);

  @override
  final String cardNumber;
  @override
  final String expDate;

  @override
  String toString() {
    return 'PaymentBlocEvent.addCreditNumber(cardNumber: $cardNumber, expDate: $expDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCreditCardEventImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expDate, expDate) || other.expDate == expDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, expDate);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCreditCardEventImplCopyWith<_$AddCreditCardEventImpl> get copyWith =>
      __$$AddCreditCardEventImplCopyWithImpl<_$AddCreditCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
  }) {
    return addCreditNumber(cardNumber, expDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
  }) {
    return addCreditNumber?.call(cardNumber, expDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    required TResult orElse(),
  }) {
    if (addCreditNumber != null) {
      return addCreditNumber(cardNumber, expDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
  }) {
    return addCreditNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
  }) {
    return addCreditNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    required TResult orElse(),
  }) {
    if (addCreditNumber != null) {
      return addCreditNumber(this);
    }
    return orElse();
  }
}

abstract class AddCreditCardEvent implements PaymentBlocEvent {
  const factory AddCreditCardEvent(
      final String cardNumber, final String expDate) = _$AddCreditCardEventImpl;

  @override
  String get cardNumber;
  String get expDate;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCreditCardEventImplCopyWith<_$AddCreditCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseCourseEventImplCopyWith<$Res>
    implements $PaymentBlocEventCopyWith<$Res> {
  factory _$$PurchaseCourseEventImplCopyWith(_$PurchaseCourseEventImpl value,
          $Res Function(_$PurchaseCourseEventImpl) then) =
      __$$PurchaseCourseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardNumber,
      String expMonth,
      String expYear,
      String cvv,
      String courseID,
      String summ});
}

/// @nodoc
class __$$PurchaseCourseEventImplCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$PurchaseCourseEventImpl>
    implements _$$PurchaseCourseEventImplCopyWith<$Res> {
  __$$PurchaseCourseEventImplCopyWithImpl(_$PurchaseCourseEventImpl _value,
      $Res Function(_$PurchaseCourseEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? cvv = null,
    Object? courseID = null,
    Object? summ = null,
  }) {
    return _then(_$PurchaseCourseEventImpl(
      null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      null == courseID
          ? _value.courseID
          : courseID // ignore: cast_nullable_to_non_nullable
              as String,
      null == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PurchaseCourseEventImpl implements PurchaseCourseEvent {
  const _$PurchaseCourseEventImpl(this.cardNumber, this.expMonth, this.expYear,
      this.cvv, this.courseID, this.summ);

  @override
  final String cardNumber;
  @override
  final String expMonth;
  @override
  final String expYear;
  @override
  final String cvv;
  @override
  final String courseID;
  @override
  final String summ;

  @override
  String toString() {
    return 'PaymentBlocEvent.purchaseCourse(cardNumber: $cardNumber, expMonth: $expMonth, expYear: $expYear, cvv: $cvv, courseID: $courseID, summ: $summ)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseCourseEventImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.courseID, courseID) ||
                other.courseID == courseID) &&
            (identical(other.summ, summ) || other.summ == summ));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardNumber, expMonth, expYear, cvv, courseID, summ);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseCourseEventImplCopyWith<_$PurchaseCourseEventImpl> get copyWith =>
      __$$PurchaseCourseEventImplCopyWithImpl<_$PurchaseCourseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
  }) {
    return purchaseCourse(cardNumber, expMonth, expYear, cvv, courseID, summ);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
  }) {
    return purchaseCourse?.call(
        cardNumber, expMonth, expYear, cvv, courseID, summ);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    required TResult orElse(),
  }) {
    if (purchaseCourse != null) {
      return purchaseCourse(cardNumber, expMonth, expYear, cvv, courseID, summ);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
  }) {
    return purchaseCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
  }) {
    return purchaseCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    required TResult orElse(),
  }) {
    if (purchaseCourse != null) {
      return purchaseCourse(this);
    }
    return orElse();
  }
}

abstract class PurchaseCourseEvent implements PaymentBlocEvent {
  const factory PurchaseCourseEvent(
      final String cardNumber,
      final String expMonth,
      final String expYear,
      final String cvv,
      final String courseID,
      final String summ) = _$PurchaseCourseEventImpl;

  @override
  String get cardNumber;
  String get expMonth;
  String get expYear;
  String get cvv;
  String get courseID;
  String get summ;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseCourseEventImplCopyWith<_$PurchaseCourseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
