import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/repositories/payment_repository/payment_repository.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

class PaymentBloc extends Bloc<PaymentBlocEvent, PaymentBlocState> {
  final strapiApiService = locator<StrapiApiService>();
  final _paymentRepo = locator<PaymentRepository>();

  PaymentBloc() : super(const PaymentBlocState()) {
    on<AddCreditCardEvent>(_addCreditCard);
    on<PurchaseCourseEvent>(_purchaseCourse);
  }

  Future<void> _purchaseCourse(
    PurchaseCourseEvent event,
    Emitter<PaymentBlocState> emit,
  ) async {
    final bool purchaseStatus = await _paymentRepo.buyCourse(
      event.cardNumber,
      event.expMonth,
      event.expYear,
      event.cvv,
      event.summ,
    );
    if (purchaseStatus) {
      // print('successfully purchase');
      final bool connectCourse =
          await strapiApiService.purchaseCourse(event.courseID);
      if (connectCourse) {
        emit(
          state.copyWith(paymentStatus: PaymentStatus.success),
        );
        emit(
          state.copyWith(paymentStatus: PaymentStatus.initial),
        );
      } else {
        emit(
          state.copyWith(paymentStatus: PaymentStatus.failed),
        );
        emit(
          state.copyWith(paymentStatus: PaymentStatus.initial),
        );
      }
    } else {
      emit(
        state.copyWith(paymentStatus: PaymentStatus.failed),
      );
      emit(
        state.copyWith(paymentStatus: PaymentStatus.initial),
      );
    }
  }

  Future<void> _addCreditCard(
    AddCreditCardEvent event,
    Emitter<PaymentBlocState> emit,
  ) async {
    await strapiApiService.addCreditCard(
      event.cardNumber.replaceAll('-', ''),
      event.expDate,
    );
  }
}
