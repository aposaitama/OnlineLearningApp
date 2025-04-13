import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/navigation/app_navigation.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final authPageTheme = Theme.of(context).copyWith(
      scaffoldBackgroundColor:
          isDark ? AppColors.darkColor : AppColors.greyCoor,
    );
    return Theme(
      data: authPageTheme,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 159.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Log In',
                      style: AppFonts.poppinsBold.copyWith(
                        color: Theme.of(context)
                            .extension<AppColorsModel>()
                            ?.mainTextColor,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).extension<AppColorsModel>()?.onSurface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 33.0,
                      ),
                      const CustomTextField(title: 'Your Email', hint: ''),
                      const SizedBox(
                        height: 25.0,
                      ),
                      const CustomTextField(
                        title: 'Password',
                        hint: '',
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const CustomFilledButton(
                        buttonTitle: 'Log In',
                      ),
                      const SizedBox(
                        height: 26.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: AppFonts.poppinsRegular.copyWith(
                              fontSize: 12.0,
                              color: Theme.of(context)
                                  .extension<AppColorsModel>()
                                  ?.hintTextColor,
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          GestureDetector(
                            onTap: () => context.go('/register'),
                            child: Text(
                              'Sign up',
                              style: AppFonts.poppinsRegular.copyWith(
                                fontSize: 12.0,
                                color: AppColors.deepBlueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
