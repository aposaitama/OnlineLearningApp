import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_state.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/key_field.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/phone_text_field.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

class PhoneLinkingScreen extends StatefulWidget {
  const PhoneLinkingScreen({super.key});

  @override
  State<PhoneLinkingScreen> createState() => _PhoneLinkingScreenState();
}

class _PhoneLinkingScreenState extends State<PhoneLinkingScreen> {
  final TextEditingController phoneNumberController = TextEditingController();

  void _removeSign() {
    phoneNumberController.text.isNotEmpty
        ? phoneNumberController.text = phoneNumberController.text.substring(
            0,
            phoneNumberController.text.length - 1,
          )
        : null;
    setState(() {});
  }

  void _onKeyFieldPressed(String numItem) {
    if (phoneNumberController.text.length <= 15) {
      phoneNumberController.text += numItem;
    }
  }

  void _connectPhoneNumberValidationMethod(String phoneNum) {
    if (phoneNum.isNotEmpty) {
      try {
        final frPhone0 = PhoneNumber.parse(phoneNum);
        final bool isPhoneValid = frPhone0.isValid(
          type: PhoneNumberType.mobile,
        );
        isPhoneValid
            ? context.read<AuthBloc>().add(
                  ConnectPhoneNumEvent(
                    phoneNum,
                  ),
                )
            : BotToast.showText(
                text: 'Enter correct phone number',
              );
      } on PhoneNumberException catch (e) {
        BotToast.showText(
          text: "Error: ${e.description.toString()}",
        );
      }
    } else {
      BotToast.showText(
        text: 'Enter correct phone number',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final appBarBackgroundColor =
        isDark ? AppColors.darkColor : AppColors.greyCoor;
    final authPageTheme = Theme.of(context).copyWith(
      scaffoldBackgroundColor:
          isDark ? AppColors.darkColor : AppColors.greyCoor,
    );

    return Theme(
      data: authPageTheme,
      child: BlocListener<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          if (state.phoneNumberConnectingStatus ==
              PhoneNumberConnectingStatus.successfull) {
            context.push(
              '/phone_verify',
            );
          } else if (state.phoneNumberConnectingStatus ==
              PhoneNumberConnectingStatus.failed) {
            BotToast.showText(
              text: 'Error while connecting phoneNumber. Try again',
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarBackgroundColor,
            // leading: GestureDetector(
            //   onTap: () => context.pop(),
            //   child: SvgPicture.asset(
            //     Assets.icons.arrowBack,
            //     fit: BoxFit.scaleDown,
            //     colorFilter: ColorFilter.mode(
            //       Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            //       BlendMode.srcIn,
            //     ),
            //   ),
            // ),
            title: Text(
              'Continue with Phone',
              style: AppFonts.poppinsMedium.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.mainTextColor,
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const Gap(25.0),
                    Center(
                      child: SvgPicture.asset(
                        fit: BoxFit.scaleDown,
                        Assets.icons.linkPhone,
                      ),
                    ),
                    const Gap(40.0),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .extension<AppColorsModel>()
                        ?.onSurface,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(25.0),
                        Text(
                          'Enter Your  Phone Number',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 14.0,
                            color: Theme.of(
                              context,
                            ).extension<AppColorsModel>()?.hintTextColor,
                          ),
                        ),
                        const Gap(25.0),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            PhoneTextField(
                              hint: '',
                              controller: phoneNumberController,
                            ),
                            SizedBox(
                              width: 125.0,
                              child: CustomFilledButton(
                                onTap: () =>
                                    _connectPhoneNumberValidationMethod(
                                  phoneNumberController.text,
                                ),
                                buttonTitle: 'Continue',
                                buttonColor: phoneNumberController.text.isEmpty
                                    ? AppColors.darkHintTextColor
                                    : null,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              for (var row in [
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
                                          (numItem) => GestureDetector(
                                            onTap: () {
                                              _onKeyFieldPressed(numItem);
                                              setState(() {});
                                            },
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 20.0,
                                                ),
                                                child: SizedBox(
                                                  width: 64,
                                                  height: 64,
                                                  child: Center(
                                                    child: KeyField(
                                                      num: numItem,
                                                    ),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.0,
                                      ),
                                      child: SizedBox(width: 64, height: 64),
                                    ),
                                    GestureDetector(
                                      onTap: () => _onKeyFieldPressed('0'),
                                      child: Container(
                                        color: Colors.transparent,
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: SizedBox(
                                            width: 64,
                                            height: 64,
                                            child: Center(
                                              child: KeyField(
                                                num: '0',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: _removeSign,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
