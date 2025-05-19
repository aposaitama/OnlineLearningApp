import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc_event.freezed.dart';

@freezed
class PaymentBlocEvent with _$PaymentBlocEvent {
  const factory PaymentBlocEvent.addCreditNumber(
    String cardNumber,
    String expDate,
  ) = AddCreditCardEvent;
  const factory PaymentBlocEvent.purchaseCourse(
    String cardNumber,
    String expMonth,
    String expYear,
    String cvv,
    String courseID,
    String summ,
  ) = PurchaseCourseEvent;

  const factory PaymentBlocEvent.checkPassword({required String paymentPassword}) = CheckPaymentPasswordEvent;

  const factory PaymentBlocEvent.resetCheckPassword() = ResetCheckPasswordEvent;
}
