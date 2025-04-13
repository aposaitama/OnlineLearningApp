import 'package:flutter/material.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class GlobalTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: AppFonts.poppinsBold.copyWith(color: AppColors.darkColor),
      bodyMedium:
          AppFonts.poppinsRegular.copyWith(color: AppColors.textPrimary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.deepBlueColor,
        foregroundColor: Colors.white,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.darkHintTextColor),
    ),
    extensions: <ThemeExtension<dynamic>>[
      AppColorsModel(
          redLight: Colors.redAccent,
          red: Colors.red,
          blueLight: Colors.blueAccent,
          blue: Colors.blue,
          greenLight: Colors.greenAccent,
          green: Colors.green,
          white: Colors.white,
          orange: Colors.orange,
          violetLight: Colors.purpleAccent,
          grey: Colors.grey,
          greyDark: Colors.grey[800]!,
          pink: Colors.pink,
          violet: Colors.purple,
          onSurface: Colors.white,
          mainTextColor: AppColors.darkColor,
          hintTextColor: AppColors.darkHintTextColor),
    ],
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkColor,
    textTheme: TextTheme(
      titleLarge: AppFonts.poppinsBold.copyWith(color: Colors.white),
      titleMedium: AppFonts.poppinsMedium.copyWith(color: Colors.white),
      bodyMedium: AppFonts.poppinsRegular.copyWith(color: Colors.white70),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.deepBlueColor,
        foregroundColor: Colors.white,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey),
    ),
    extensions: <ThemeExtension<dynamic>>[
      AppColorsModel(
          redLight: Colors.redAccent,
          red: Colors.red,
          blueLight: Colors.blueAccent,
          blue: Colors.blue,
          greenLight: Colors.greenAccent,
          green: Colors.green,
          white: Colors.white,
          orange: Colors.orange,
          violetLight: Colors.purpleAccent,
          grey: Colors.grey,
          greyDark: Colors.grey[800]!,
          pink: Colors.pink,
          violet: Colors.purple,
          onSurface: AppColors.charcoalBlue,
          mainTextColor: Colors.white,
          hintTextColor: AppColors.lavanderGrayColor),
    ],
  );
}
