// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentBlocState {
  PaymentLoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  CreditCardAddingStatus get addingCardStatus =>
      throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  bool get checkPassword => throw _privateConstructorUsedError;

  /// Create a copy of PaymentBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentBlocStateCopyWith<PaymentBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBlocStateCopyWith<$Res> {
  factory $PaymentBlocStateCopyWith(
          PaymentBlocState value, $Res Function(PaymentBlocState) then) =
      _$PaymentBlocStateCopyWithImpl<$Res, PaymentBlocState>;
  @useResult
  $Res call(
      {PaymentLoadingStatus loadingStatus,
      CreditCardAddingStatus addingCardStatus,
      PaymentStatus paymentStatus,
      bool checkPassword});
}

/// @nodoc
class _$PaymentBlocStateCopyWithImpl<$Res, $Val extends PaymentBlocState>
    implements $PaymentBlocStateCopyWith<$Res> {
  _$PaymentBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? addingCardStatus = null,
    Object? paymentStatus = null,
    Object? checkPassword = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as PaymentLoadingStatus,
      addingCardStatus: null == addingCardStatus
          ? _value.addingCardStatus
          : addingCardStatus // ignore: cast_nullable_to_non_nullable
              as CreditCardAddingStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      checkPassword: null == checkPassword
          ? _value.checkPassword
          : checkPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentBlocStateImplCopyWith<$Res>
    implements $PaymentBlocStateCopyWith<$Res> {
  factory _$$PaymentBlocStateImplCopyWith(_$PaymentBlocStateImpl value,
          $Res Function(_$PaymentBlocStateImpl) then) =
      __$$PaymentBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentLoadingStatus loadingStatus,
      CreditCardAddingStatus addingCardStatus,
      PaymentStatus paymentStatus,
      bool checkPassword});
}

/// @nodoc
class __$$PaymentBlocStateImplCopyWithImpl<$Res>
    extends _$PaymentBlocStateCopyWithImpl<$Res, _$PaymentBlocStateImpl>
    implements _$$PaymentBlocStateImplCopyWith<$Res> {
  __$$PaymentBlocStateImplCopyWithImpl(_$PaymentBlocStateImpl _value,
      $Res Function(_$PaymentBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? addingCardStatus = null,
    Object? paymentStatus = null,
    Object? checkPassword = null,
  }) {
    return _then(_$PaymentBlocStateImpl(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as PaymentLoadingStatus,
      addingCardStatus: null == addingCardStatus
          ? _value.addingCardStatus
          : addingCardStatus // ignore: cast_nullable_to_non_nullable
              as CreditCardAddingStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      checkPassword: null == checkPassword
          ? _value.checkPassword
          : checkPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentBlocStateImpl implements _PaymentBlocState {
  const _$PaymentBlocStateImpl(
      {this.loadingStatus = PaymentLoadingStatus.initial,
      this.addingCardStatus = CreditCardAddingStatus.initial,
      this.paymentStatus = PaymentStatus.initial,
      this.checkPassword = false});

  @override
  @JsonKey()
  final PaymentLoadingStatus loadingStatus;
  @override
  @JsonKey()
  final CreditCardAddingStatus addingCardStatus;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  @JsonKey()
  final bool checkPassword;

  @override
  String toString() {
    return 'PaymentBlocState(loadingStatus: $loadingStatus, addingCardStatus: $addingCardStatus, paymentStatus: $paymentStatus, checkPassword: $checkPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentBlocStateImpl &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.addingCardStatus, addingCardStatus) ||
                other.addingCardStatus == addingCardStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.checkPassword, checkPassword) ||
                other.checkPassword == checkPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingStatus, addingCardStatus,
      paymentStatus, checkPassword);

  /// Create a copy of PaymentBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentBlocStateImplCopyWith<_$PaymentBlocStateImpl> get copyWith =>
      __$$PaymentBlocStateImplCopyWithImpl<_$PaymentBlocStateImpl>(
          this, _$identity);
}

abstract class _PaymentBlocState implements PaymentBlocState {
  const factory _PaymentBlocState(
      {final PaymentLoadingStatus loadingStatus,
      final CreditCardAddingStatus addingCardStatus,
      final PaymentStatus paymentStatus,
      final bool checkPassword}) = _$PaymentBlocStateImpl;

  @override
  PaymentLoadingStatus get loadingStatus;
  @override
  CreditCardAddingStatus get addingCardStatus;
  @override
  PaymentStatus get paymentStatus;
  @override
  bool get checkPassword;

  /// Create a copy of PaymentBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentBlocStateImplCopyWith<_$PaymentBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
