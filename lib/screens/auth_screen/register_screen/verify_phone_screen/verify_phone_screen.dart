import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/key_field.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/success_registration.dart';
import 'package:online_app/screens/auth_screen/register_screen/verify_phone_screen/widgets/text_form_field_item.dart';
import 'package:online_app/widgets/custom_filled_button.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

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
          'Verify Phone',
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
                  topLeft: Radius.circular(
                    10.0,
                  ),
                  topRight: Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 59.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Code is sent to 283 835 2999 ',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 18.0,
                            color: Theme.of(
                              context,
                            ).extension<AppColorsModel>()?.hintTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFormFieldItem(),
                            TextFormFieldItem(),
                            TextFormFieldItem(),
                            TextFormFieldItem(),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Didn’t recieve code?',
                              style: AppFonts.poppinsRegular.copyWith(
                                fontSize: 12.0,
                                color: Theme.of(
                                  context,
                                ).extension<AppColorsModel>()?.hintTextColor,
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            GestureDetector(
                              onTap: () => context.go(
                                '/register',
                              ),
                              child: Text(
                                'Request again',
                                style: AppFonts.poppinsRegular.copyWith(
                                  fontSize: 12.0,
                                  color: AppColors.deepBlueColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 38.0,
                        ),
                        CustomFilledButton(
                          onTap: () {
                            SuccessRegistration.show(
                              context,
                              () => context.go(
                                '/home',
                              ),
                            );
                          },
                          buttonTitle: 'Verify and Create Account',
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
                                    onTap: () {},
                                    child: SizedBox(
                                      height: 64.0,
                                      width: 64.0,
                                      child: Icon(
                                        Icons.backspace_outlined,
                                        color: Theme.of(
                                          context,
                                        )
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
          )
        ],
      ),
    );
  }
}
