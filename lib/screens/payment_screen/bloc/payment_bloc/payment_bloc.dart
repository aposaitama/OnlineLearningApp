import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/di/service_locator.dart';
import 'package:online_app/models/local_notification_model/local_notification_model.dart';
import 'package:online_app/repositories/course_item_repository/course_item_repository.dart';
import 'package:online_app/repositories/payment_repository/payment_repository.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:online_app/services/local_notifications_service/local_notifications_service.dart';
import 'package:online_app/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';

class PaymentBloc extends Bloc<PaymentBlocEvent, PaymentBlocState> {
  final strapiApiService = locator<StrapiApiService>();
  final _paymentRepo = locator<PaymentRepository>();
  final _courseItemsRepo = locator<CourseItemRepository>();
  final _localNotificationsService = locator<LocalNotificationsService>();

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

      final course = await _courseItemsRepo.getCourseById(
        courseId: event.courseID,
      );
      final bool connectCourse = await strapiApiService.purchaseCourse(
        salesCount: course!.salesCount + 1,
        courseId: course.id,
      );
      if (connectCourse) {
        emit(
          state.copyWith(paymentStatus: PaymentStatus.success),
        );

        int id = DateTime.now().millisecondsSinceEpoch.remainder(10000);
        _localNotificationsService.showNotification(
          id: id,
          title: 'Online Learning App',
          body:
              'You have successfully purchased a course "${course.courseTitle}"',
          notificationType: 'card',
        );

      } else {
        emit(
          state.copyWith(paymentStatus: PaymentStatus.failed),
        );
      }
    } else {
      emit(
        state.copyWith(paymentStatus: PaymentStatus.failed),
      );
    }
    emit(
      state.copyWith(paymentStatus: PaymentStatus.initial),
    );
  }

  Future<void> _addCreditCard(
    AddCreditCardEvent event,
    Emitter<PaymentBlocState> emit,
  ) async {
    final bool response = await strapiApiService.addCreditCard(
      event.cardNumber.replaceAll('-', ''),
      event.expDate,
    );
    response
        ? emit(
            state.copyWith(
              addingCardStatus: CreditCardAddingStatus.success,
            ),
          )
        : emit(
            state.copyWith(
              addingCardStatus: CreditCardAddingStatus.failed,
            ),
          );
    emit(
      state.copyWith(
        addingCardStatus: CreditCardAddingStatus.initial,
      ),
    );
  }
}
