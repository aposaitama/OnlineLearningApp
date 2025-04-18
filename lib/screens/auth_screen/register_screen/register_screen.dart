import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/models/user_model/user_model.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/bloc/auth_bloc/auth_bloc_state.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:online_app/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAgree = false;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final authPageTheme = Theme.of(context).copyWith(
      scaffoldBackgroundColor:
          isDark ? AppColors.darkColor : AppColors.greyCoor,
    );
    return Theme(
      data: authPageTheme,
      child: BlocListener<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          state.status == RegisterStatus.successfull
              ? context.go('/phone_linking')
              : state.status == RegisterStatus.failed
              ? BotToast.showText(text: state.errorMessage)
              : null;
        },
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
                        'Sign Up',
                        style: AppFonts.poppinsBold.copyWith(
                          color:
                              Theme.of(
                                context,
                              ).extension<AppColorsModel>()?.mainTextColor,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Enter your details below & free sign up',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 12.0,
                            color: AppColors.lavanderGrayColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.charcoalBlue : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 33.0),
                        CustomTextField(
                          title: 'Your Username',
                          hint: '',
                          controller: userNameController,
                        ),
                        const SizedBox(height: 25.0),
                        CustomTextField(
                          title: 'Your Email',
                          hint: '',
                          controller: userEmailController,
                        ),
                        const SizedBox(height: 25.0),
                        CustomTextField(
                          title: 'Password',
                          hint: '',
                          isPassword: true,
                          controller: userPasswordController,
                        ),
                        const SizedBox(height: 24.0),
                        CustomFilledButton(
                          buttonTitle: 'Create account',
                          onTap: () {
                            // context.push('/phone_linking');
                            context.read<AuthBloc>().add(
                              RegisterUserBlocEvent(
                                userNameController.text,
                                userEmailController.text,
                                userPasswordController.text,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                              activeColor: AppColors.deepBlueColor,
                              side: const BorderSide(
                                width: 0.5,
                                color: AppColors.darkHintTextColor,
                              ),
                              value: isAgree,
                              onChanged: (value) {
                                isAgree = !isAgree;
                                setState(() {});
                              },
                            ),
                            Expanded(
                              child: Text(
                                maxLines: null,
                                'By creating an account you have to agree with our them & condication.',
                                style: AppFonts.poppinsRegular.copyWith(
                                  height: 1.5,
                                  fontSize: 12.0,
                                  color:
                                      Theme.of(context)
                                          .extension<AppColorsModel>()
                                          ?.hintTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account？',
                              style: AppFonts.poppinsRegular.copyWith(
                                fontSize: 12.0,
                                color:
                                    Theme.of(context)
                                        .extension<AppColorsModel>()
                                        ?.hintTextColor,
                              ),
                            ),
                            const SizedBox(width: 4.0),
                            GestureDetector(
                              onTap: () {
                                context.go('/login');
                              },
                              child: Text(
                                'Log in',
                                style: AppFonts.poppinsBold.copyWith(
                                  decoration: TextDecoration.underline,
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
      ),
    );
  }
}
