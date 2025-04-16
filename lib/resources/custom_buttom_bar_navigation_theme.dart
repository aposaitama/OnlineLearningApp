import 'package:flutter/material.dart';

@immutable
class CustomButtomBarNavigationTheme
    extends ThemeExtension<CustomButtomBarNavigationTheme> {
  final Color backgroundColor;
  final Color foregroundColor;
  final Color textActiveColor;
  final Color textUnActiveColor;

  const CustomButtomBarNavigationTheme({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.textActiveColor,
    required this.textUnActiveColor,
  });

  @override
  CustomButtomBarNavigationTheme copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    Color? textActiveColor,
    Color? textUnActiveColor,
  }) {
    return CustomButtomBarNavigationTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      textActiveColor: textActiveColor ?? this.textActiveColor,
      textUnActiveColor: textUnActiveColor ?? this.textUnActiveColor,
    );
  }

  @override
  CustomButtomBarNavigationTheme lerp(
      ThemeExtension<CustomButtomBarNavigationTheme>? other, double t) {
    if (other is! CustomButtomBarNavigationTheme) return this;
    return CustomButtomBarNavigationTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t)!,
      textActiveColor: Color.lerp(textActiveColor, other.textActiveColor, t)!,
      textUnActiveColor:
          Color.lerp(textUnActiveColor, other.textUnActiveColor, t)!,
    );
  }
}
