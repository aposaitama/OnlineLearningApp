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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
    required TResult Function(String paymentPassword) checkPassword,
    required TResult Function() resetCheckPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult? Function(String paymentPassword)? checkPassword,
    TResult? Function()? resetCheckPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult Function(String paymentPassword)? checkPassword,
    TResult Function()? resetCheckPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
    required TResult Function(CheckPaymentPasswordEvent value) checkPassword,
    required TResult Function(ResetCheckPasswordEvent value) resetCheckPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult? Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult? Function(ResetCheckPasswordEvent value)? resetCheckPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult Function(ResetCheckPasswordEvent value)? resetCheckPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBlocEventCopyWith<$Res> {
  factory $PaymentBlocEventCopyWith(
          PaymentBlocEvent value, $Res Function(PaymentBlocEvent) then) =
      _$PaymentBlocEventCopyWithImpl<$Res, PaymentBlocEvent>;
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
}

/// @nodoc
abstract class _$$AddCreditCardEventImplCopyWith<$Res> {
  factory _$$AddCreditCardEventImplCopyWith(_$AddCreditCardEventImpl value,
          $Res Function(_$AddCreditCardEventImpl) then) =
      __$$AddCreditCardEventImplCopyWithImpl<$Res>;
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
    required TResult Function(String paymentPassword) checkPassword,
    required TResult Function() resetCheckPassword,
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
    TResult? Function(String paymentPassword)? checkPassword,
    TResult? Function()? resetCheckPassword,
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
    TResult Function(String paymentPassword)? checkPassword,
    TResult Function()? resetCheckPassword,
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
    required TResult Function(CheckPaymentPasswordEvent value) checkPassword,
    required TResult Function(ResetCheckPasswordEvent value) resetCheckPassword,
  }) {
    return addCreditNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult? Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult? Function(ResetCheckPasswordEvent value)? resetCheckPassword,
  }) {
    return addCreditNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult Function(ResetCheckPasswordEvent value)? resetCheckPassword,
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

  String get cardNumber;
  String get expDate;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCreditCardEventImplCopyWith<_$AddCreditCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseCourseEventImplCopyWith<$Res> {
  factory _$$PurchaseCourseEventImplCopyWith(_$PurchaseCourseEventImpl value,
          $Res Function(_$PurchaseCourseEventImpl) then) =
      __$$PurchaseCourseEventImplCopyWithImpl<$Res>;
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
    required TResult Function(String paymentPassword) checkPassword,
    required TResult Function() resetCheckPassword,
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
    TResult? Function(String paymentPassword)? checkPassword,
    TResult? Function()? resetCheckPassword,
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
    TResult Function(String paymentPassword)? checkPassword,
    TResult Function()? resetCheckPassword,
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
    required TResult Function(CheckPaymentPasswordEvent value) checkPassword,
    required TResult Function(ResetCheckPasswordEvent value) resetCheckPassword,
  }) {
    return purchaseCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult? Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult? Function(ResetCheckPasswordEvent value)? resetCheckPassword,
  }) {
    return purchaseCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult Function(ResetCheckPasswordEvent value)? resetCheckPassword,
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

  String get cardNumber;
  String get expMonth;
  String get expYear;
  String get cvv;
  String get courseID;
  String get summ;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseCourseEventImplCopyWith<_$PurchaseCourseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPaymentPasswordEventImplCopyWith<$Res> {
  factory _$$CheckPaymentPasswordEventImplCopyWith(
          _$CheckPaymentPasswordEventImpl value,
          $Res Function(_$CheckPaymentPasswordEventImpl) then) =
      __$$CheckPaymentPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentPassword});
}

/// @nodoc
class __$$CheckPaymentPasswordEventImplCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res,
        _$CheckPaymentPasswordEventImpl>
    implements _$$CheckPaymentPasswordEventImplCopyWith<$Res> {
  __$$CheckPaymentPasswordEventImplCopyWithImpl(
      _$CheckPaymentPasswordEventImpl _value,
      $Res Function(_$CheckPaymentPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentPassword = null,
  }) {
    return _then(_$CheckPaymentPasswordEventImpl(
      paymentPassword: null == paymentPassword
          ? _value.paymentPassword
          : paymentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPaymentPasswordEventImpl implements CheckPaymentPasswordEvent {
  const _$CheckPaymentPasswordEventImpl({required this.paymentPassword});

  @override
  final String paymentPassword;

  @override
  String toString() {
    return 'PaymentBlocEvent.checkPassword(paymentPassword: $paymentPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPaymentPasswordEventImpl &&
            (identical(other.paymentPassword, paymentPassword) ||
                other.paymentPassword == paymentPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentPassword);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPaymentPasswordEventImplCopyWith<_$CheckPaymentPasswordEventImpl>
      get copyWith => __$$CheckPaymentPasswordEventImplCopyWithImpl<
          _$CheckPaymentPasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
    required TResult Function(String paymentPassword) checkPassword,
    required TResult Function() resetCheckPassword,
  }) {
    return checkPassword(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult? Function(String paymentPassword)? checkPassword,
    TResult? Function()? resetCheckPassword,
  }) {
    return checkPassword?.call(paymentPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult Function(String paymentPassword)? checkPassword,
    TResult Function()? resetCheckPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(paymentPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
    required TResult Function(CheckPaymentPasswordEvent value) checkPassword,
    required TResult Function(ResetCheckPasswordEvent value) resetCheckPassword,
  }) {
    return checkPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult? Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult? Function(ResetCheckPasswordEvent value)? resetCheckPassword,
  }) {
    return checkPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult Function(ResetCheckPasswordEvent value)? resetCheckPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(this);
    }
    return orElse();
  }
}

abstract class CheckPaymentPasswordEvent implements PaymentBlocEvent {
  const factory CheckPaymentPasswordEvent(
          {required final String paymentPassword}) =
      _$CheckPaymentPasswordEventImpl;

  String get paymentPassword;

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPaymentPasswordEventImplCopyWith<_$CheckPaymentPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetCheckPasswordEventImplCopyWith<$Res> {
  factory _$$ResetCheckPasswordEventImplCopyWith(
          _$ResetCheckPasswordEventImpl value,
          $Res Function(_$ResetCheckPasswordEventImpl) then) =
      __$$ResetCheckPasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCheckPasswordEventImplCopyWithImpl<$Res>
    extends _$PaymentBlocEventCopyWithImpl<$Res, _$ResetCheckPasswordEventImpl>
    implements _$$ResetCheckPasswordEventImplCopyWith<$Res> {
  __$$ResetCheckPasswordEventImplCopyWithImpl(
      _$ResetCheckPasswordEventImpl _value,
      $Res Function(_$ResetCheckPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetCheckPasswordEventImpl implements ResetCheckPasswordEvent {
  const _$ResetCheckPasswordEventImpl();

  @override
  String toString() {
    return 'PaymentBlocEvent.resetCheckPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetCheckPasswordEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber, String expDate)
        addCreditNumber,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvv, String courseID, String summ)
        purchaseCourse,
    required TResult Function(String paymentPassword) checkPassword,
    required TResult Function() resetCheckPassword,
  }) {
    return resetCheckPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber, String expDate)? addCreditNumber,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult? Function(String paymentPassword)? checkPassword,
    TResult? Function()? resetCheckPassword,
  }) {
    return resetCheckPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber, String expDate)? addCreditNumber,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvv, String courseID, String summ)?
        purchaseCourse,
    TResult Function(String paymentPassword)? checkPassword,
    TResult Function()? resetCheckPassword,
    required TResult orElse(),
  }) {
    if (resetCheckPassword != null) {
      return resetCheckPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCreditCardEvent value) addCreditNumber,
    required TResult Function(PurchaseCourseEvent value) purchaseCourse,
    required TResult Function(CheckPaymentPasswordEvent value) checkPassword,
    required TResult Function(ResetCheckPasswordEvent value) resetCheckPassword,
  }) {
    return resetCheckPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCreditCardEvent value)? addCreditNumber,
    TResult? Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult? Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult? Function(ResetCheckPasswordEvent value)? resetCheckPassword,
  }) {
    return resetCheckPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCreditCardEvent value)? addCreditNumber,
    TResult Function(PurchaseCourseEvent value)? purchaseCourse,
    TResult Function(CheckPaymentPasswordEvent value)? checkPassword,
    TResult Function(ResetCheckPasswordEvent value)? resetCheckPassword,
    required TResult orElse(),
  }) {
    if (resetCheckPassword != null) {
      return resetCheckPassword(this);
    }
    return orElse();
  }
}

abstract class ResetCheckPasswordEvent implements PaymentBlocEvent {
  const factory ResetCheckPasswordEvent() = _$ResetCheckPasswordEventImpl;
}
