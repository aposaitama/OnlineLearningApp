import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/key_field.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/success_registration.dart';
import 'package:online_app/screens/auth_screen/register_screen/verify_phone_screen/widgets/text_form_field_item.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()?.onSurface,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            'assets/icons/ArrowBack.svg',
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        title: Text(
          'Create payment password',
          style: AppFonts.poppinsMedium.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
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
                  const SizedBox(height: 70.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 59.0),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Enter 4 didgits to create payment password',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 18.0,
                            color: Theme.of(
                              context,
                            ).extension<AppColorsModel>()?.hintTextColor,
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
                        const SizedBox(height: 30.0),
                        const SizedBox(height: 38.0),
                        CustomFilledButton(
                          onTap: () {
                            SuccessRegistration.show(
                              context,
                              () => context.go(
                                '/home',
                              ),
                            );
                          },
                          buttonTitle: 'Create Account',
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
                                const Padding(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
