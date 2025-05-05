import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:online_app/resources/app_colors_model.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentBlocState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
          ),
          height: MediaQuery.of(context).size.height / 1.4,
          child: Column(
            children: [
              CustomTextField(
                controller: cvvController,
                title: 'Enter cvv code',
                hint: '',
              ),
              CustomFilledButton(
                onTap: () => context.read<PaymentBloc>().add(
                      PurchaseCourseEvent(
                        widget.cardNumber,
                        widget.expMonth,
                        widget.expYear,
                        cvvController.text,
                        widget.courseID,
                        widget.summ,
                      ),
                    ),
                buttonTitle: 'Purchase Course',
              )
            ],
          ),
        );
      },
    );
  }
}
