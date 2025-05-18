import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';

class EnterCvvCodeSheet extends StatefulWidget {
  final String cardNumber;
  final String expMonth;
  final String expYear;

  final String courseID;
  final String summ;
  const EnterCvvCodeSheet({
    super.key,
    required this.cardNumber,
    required this.expMonth,
    required this.expYear,
    required this.courseID,
    required this.summ,
  });

  @override
  State<EnterCvvCodeSheet> createState() => _EnterCvvCodeSheetState();
}

class _EnterCvvCodeSheetState extends State<EnterCvvCodeSheet> {
  final TextEditingController cvvController = TextEditingController();

  void onPurchaseCoursePressed() {
    if (cvvController.text.length == 3) {
      context.read<PaymentBloc>().add(
            PurchaseCourseEvent(
              widget.cardNumber,
              widget.expMonth,
              widget.expYear,
              cvvController.text,
              widget.courseID,
              widget.summ,
            ),
          );
    } else {
      BotToast.showText(text: 'Enter correct cvv');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentBlocState>(
      listener: (context, state) {
        if (state.paymentStatus == PaymentStatus.success) {
          context.go('/successfull_payment_screen');
          context.read<HomeScreenBloc>().add(
                const LoadUserHomeScreenBlocEvent(),
              );
        } else if (state.paymentStatus == PaymentStatus.failed) {
          BotToast.showText(
            text: 'Purchase failed',
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
        ),
        height: MediaQuery.of(context).size.height / 1.4,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextField(
                controller: cvvController,
                title: 'Enter cvv code',
                hint: '',
              ),
              BlocBuilder<PaymentBloc, PaymentBlocState>(
                builder: (context, state) {
                  return CustomFilledButton(
                    onTap: onPurchaseCoursePressed,
                    buttonTitle: 'Purchase Course',
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
