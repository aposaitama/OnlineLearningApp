import 'package:flutter/material.dart';

@immutable
class TypographyTheme extends ThemeExtension<TypographyTheme> {
  final Color color;

  const TypographyTheme({required this.color});

  //Regular
  TextStyle get r8 => TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 8,
        color: color,
      );

  TextStyle get r10 => TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 10,
        color: color,
      );

  @override
  TypographyTheme copyWith({Color? color}) {
    return TypographyTheme(color: color ?? this.color);
  }

  @override
  TypographyTheme lerp(TypographyTheme? other, double t) {
    if (other == null) return this;
    return TypographyTheme(color: Color.lerp(color, other.color, t)!);
  }
}
