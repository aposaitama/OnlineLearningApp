import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';

class AddNewCardSheet extends StatefulWidget {
  const AddNewCardSheet({super.key});

  @override
  State<AddNewCardSheet> createState() => _AddNewCardSheetState();
}

class _AddNewCardSheetState extends State<AddNewCardSheet> {
  void _addNewCardPressed() {
    final cardNumber = maskCardNumFormatter.getUnmaskedText();
    final expDateRaw = maskExpDateFormatter.getUnmaskedText();

    if (cardNumber.length == 16) {
      if (expDateRaw.length == 4) {
        final month = int.tryParse(expDateRaw.substring(0, 2));
        final year = int.tryParse(expDateRaw.substring(2, 4));

        if (month != null && year != null && month >= 1 && month <= 12) {
          final now = DateTime.now();
          final currentMonth = now.month;
          final currentYear = now.year % 100;

          final isExpired = (year < currentYear) ||
              (year == currentYear && month < currentMonth);

          if (!isExpired) {
            context.read<PaymentBloc>().add(
                  AddCreditCardEvent(
                    maskCardNumFormatter.getMaskedText(),
                    maskExpDateFormatter.getUnmaskedText(),
                  ),
                );
            context.read<HomeScreenBloc>().add(
                  const LoadUserHomeScreenBlocEvent(),
                );
            context.pop();
            BotToast.showLoading();
            return;
          } else {
            BotToast.showText(text: 'Card has expired');
            return;
          }
        }
      }
      BotToast.showText(text: 'Enter a valid expiration date');
    } else {
      BotToast.showText(
        text: 'Enter correct card number',
      );
    }
  }

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardExpController = TextEditingController();
  MaskTextInputFormatter maskCardNumFormatter = MaskTextInputFormatter(
    mask: '####-####-####-####',
    filter: {
      "#": RegExp(
        r'[0-9]',
      ),
    },
  );
  MaskTextInputFormatter maskExpDateFormatter = MaskTextInputFormatter(
    mask: '##/##',
    filter: {
      "#": RegExp(
        r'[0-9]',
      ),
    },
  );
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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomTextField(
                      controller: cardNumberController,
                      inputFormatter: [maskCardNumFormatter],
                      title: 'Enter card number',
                      hint: '',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      controller: cardExpController,
                      inputFormatter: [maskExpDateFormatter],
                      title: 'Enter exp date',
                      hint: '',
                    ),
                  ],
                ),
                CustomFilledButton(
                  onTap: _addNewCardPressed,
                  buttonTitle: 'Add new card',
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
