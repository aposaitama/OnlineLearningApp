import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';
import '../../../widgets/custom_filled_button.dart';
import '../../auth_screen/register_screen/phone_linking_screen/widgets/key_field.dart';
import '../../auth_screen/register_screen/verify_phone_screen/widgets/text_form_field_item.dart';

class EnterPaymentPasswordSheet extends StatefulWidget {
  final VoidCallback showCvvBottomSheet;

  const EnterPaymentPasswordSheet(
      {super.key, required this.showCvvBottomSheet});

  @override
  State<EnterPaymentPasswordSheet> createState() =>
      _EnterPaymentPasswordSheetState();
}

class _EnterPaymentPasswordSheetState extends State<EnterPaymentPasswordSheet> {
  final List code = ['', '', '', ''];

  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      4,
      (_) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    for (TextEditingController controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void addDigit(String digit) {
    final index = code.indexWhere((element) => element.isEmpty);
    if (index != -1) {
      setState(
        () {
          code[index] = digit;
          _controllers[index].text = digit;
        },
      );
    }
  }

  void deleteDigit() {
    final index = code.lastIndexWhere(
      (element) => element.isNotEmpty,
    );
    if (index != -1) {
      setState(
        () {
          code[index] = '';
          _controllers[index].clear();
        },
      );
    }
  }

  void _enterPassword({required String paymentPassword}) {
    context.read<PaymentBloc>().add(
          CheckPaymentPasswordEvent(
            paymentPassword: paymentPassword,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentBlocState>(
      listener: (context, state) {
        if (state.checkPasswordStatus == CheckPaymentPasswordStatus.successful) {
          context.pop();
          widget.showCvvBottomSheet();
          context.read<PaymentBloc>().add(
                const ResetCheckPasswordEvent(),
              );
        } else if(state.checkPasswordStatus == CheckPaymentPasswordStatus.error) {
          BotToast.showText(text: 'Invalid password!');
        }
        context.read<PaymentBloc>().add(
              const ResetCheckPasswordEvent(),
            );
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).extension<AppColorsModel>()?.onSurface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 35.0),
                  Text(
                    'Payment Password',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Theme.of(context)
                          .extension<AppColorsModel>()
                          ?.mainTextColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 59.0),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Please enter the payment password',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context)
                                .extension<AppColorsModel>()
                                ?.hintTextColor,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            return TextFormFieldItem(
                              controller: _controllers[index],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          for (List<String> row in [
                            ['1', '2', '3'],
                            ['4', '5', '6'],
                            ['7', '8', '9'],
                          ])
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: row
                                    .map(
                                      (numItem) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                        ),
                                        child: SizedBox(
                                          width: 64,
                                          height: 64,
                                          child: Center(
                                            child: KeyField(
                                              num: numItem,
                                              onKeyTap: () => addDigit(
                                                numItem,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: SizedBox(
                                    width: 64,
                                    height: 64,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: SizedBox(
                                    width: 64,
                                    height: 64,
                                    child: Center(
                                      child: KeyField(
                                        num: '0',
                                        onKeyTap: () => addDigit(
                                          '0',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      deleteDigit();
                                    },
                                    child: SizedBox(
                                      height: 64.0,
                                      width: 64.0,
                                      child: Icon(
                                        Icons.backspace_outlined,
                                        color: Theme.of(context)
                                            .extension<AppColorsModel>()
                                            ?.mainTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1 / 2,
                      child: CustomFilledButton(
                        onTap: () => _enterPassword(
                          paymentPassword: code.join(),
                        ),
                        buttonTitle: 'Enter',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
