import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/navigation/app_navigation.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/key_field.dart';
import 'package:online_app/screens/auth_screen/register_screen/phone_linking_screen/widgets/phone_text_field.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';

class PhoneLinkingScreen extends StatelessWidget {
  const PhoneLinkingScreen({super.key});

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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarBackgroundColor,
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
            'Continue with Phone',
            style: AppFonts.poppinsMedium.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  const Gap(25.0),
                  Center(
                    child: SvgPicture.asset(
                      fit: BoxFit.scaleDown,
                      'assets/icons/LinkPhone.svg',
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
                  color:
                      Theme.of(context).extension<AppColorsModel>()?.onSurface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(25.0),
                      Text(
                        'Enter Your  Phone Number',
                        style: AppFonts.poppinsRegular.copyWith(
                          fontSize: 14.0,
                          color: Theme.of(context)
                              .extension<AppColorsModel>()
                              ?.hintTextColor,
                        ),
                      ),
                      const Gap(25.0),
                      const Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          PhoneTextField(
                            hint: '',
                          ),
                          SizedBox(
                            width: 125.0,
                            child: CustomFilledButton(
                              buttonTitle: 'Continue',
                            ),
                          )
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
                                        (num) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                          ),
                                          child: SizedBox(
                                            width: 64,
                                            height: 64,
                                            child: Center(
                                              child: KeyField(
                                                num: num,
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
                                        child:
                                            Center(child: KeyField(num: '0'))),
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
