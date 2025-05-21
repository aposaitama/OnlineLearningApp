import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc_state.freezed.dart';

enum PaymentLoadingStatus {
  initial,
  loading,
  loaded,
  error,
}

enum PaymentStatus {
  initial,
  success,
  failed,
}

enum CreditCardAddingStatus {
  initial,
  success,
  failed,
}

enum CheckPaymentPasswordStatus {
  initial,
  successful,
  error,
}

@freezed
class PaymentBlocState with _$PaymentBlocState {
  const factory PaymentBlocState({
    @Default(
      PaymentLoadingStatus.initial,
    )
    PaymentLoadingStatus loadingStatus,
    @Default(
      CreditCardAddingStatus.initial,
    )
    CreditCardAddingStatus addingCardStatus,
    @Default(
      PaymentStatus.initial,
    )
    PaymentStatus paymentStatus,
    @Default(CheckPaymentPasswordStatus.initial) CheckPaymentPasswordStatus checkPasswordStatus,
  }) = _PaymentBlocState;
}
