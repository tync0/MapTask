import 'package:flutter/material.dart';

extension AppExtension on BuildContext {
  //size
  double get mediaQueryHeight => MediaQuery.sizeOf(this).height;
  double get mediaQueryWidth => MediaQuery.sizeOf(this).width;
  double dynamicHeight(double value) => value * mediaQueryHeight;
  double dynamicWidth(double value) => mediaQueryWidth * value;

  //color
  Color get black => const Color(0xFF181F2A);

  //textstyle
  TextStyle get largeTextStyle => TextStyle(
        color: black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'SfPro',
      );
  TextStyle get h1TextStyle => TextStyle(
        color: black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'SfPro',
      );
  TextStyle get h0TextStyle => TextStyle(
        color: black,
        fontSize: 19.5,
        fontWeight: FontWeight.w600,
        fontFamily: 'SfPro',
      );
  TextStyle get mediumTextStyle => TextStyle(
        color: black,
        fontSize: 12.5,
        fontWeight: FontWeight.w600,
        fontFamily: 'SfPro',
      );
  TextStyle get smallTextStyle => TextStyle(
        color: black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'SfPro',
      );
}
