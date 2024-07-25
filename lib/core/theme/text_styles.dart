import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'Poppins';

  static TextStyle _getTextStyle(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  // Light
  static TextStyle light12 = _getTextStyle(12, FontWeight.w300);
  static TextStyle light14 = _getTextStyle(14, FontWeight.w300);
  static TextStyle light16 = _getTextStyle(16, FontWeight.w300);
  static TextStyle light18 = _getTextStyle(18, FontWeight.w300);
  static TextStyle light20 = _getTextStyle(20, FontWeight.w300);
  static TextStyle light22 = _getTextStyle(22, FontWeight.w300);
  static TextStyle light24 = _getTextStyle(24, FontWeight.w300);

  // Regular
  static TextStyle regular12 = _getTextStyle(12, FontWeight.w400);
  static TextStyle regular14 = _getTextStyle(14, FontWeight.w400);
  static TextStyle regular16 = _getTextStyle(16, FontWeight.w400);
  static TextStyle regular18 = _getTextStyle(18, FontWeight.w400);
  static TextStyle regular20 = _getTextStyle(20, FontWeight.w400);
  static TextStyle regular22 = _getTextStyle(22, FontWeight.w400);
  static TextStyle regular24 = _getTextStyle(24, FontWeight.w400);

  // Medium
  static TextStyle medium12 = _getTextStyle(12, FontWeight.w500);
  static TextStyle medium14 = _getTextStyle(14, FontWeight.w500);
  static TextStyle medium16 = _getTextStyle(16, FontWeight.w500);
  static TextStyle medium18 = _getTextStyle(18, FontWeight.w500);
  static TextStyle medium20 = _getTextStyle(20, FontWeight.w500);
  static TextStyle medium22 = _getTextStyle(22, FontWeight.w500);
  static TextStyle medium24 = _getTextStyle(24, FontWeight.w500);

  // SemiBold
  static TextStyle semiBold12 = _getTextStyle(12, FontWeight.w600);
  static TextStyle semiBold14 = _getTextStyle(14, FontWeight.w600);
  static TextStyle semiBold16 = _getTextStyle(16, FontWeight.w600);
  static TextStyle semiBold18 = _getTextStyle(18, FontWeight.w600);
  static TextStyle semiBold20 = _getTextStyle(20, FontWeight.w600);
  static TextStyle semiBold22 = _getTextStyle(22, FontWeight.w600);
  static TextStyle semiBold24 = _getTextStyle(24, FontWeight.w600);

  // Bold
  static TextStyle bold12 = _getTextStyle(12, FontWeight.w700);
  static TextStyle bold14 = _getTextStyle(14, FontWeight.w700);
  static TextStyle bold16 = _getTextStyle(16, FontWeight.w700);
  static TextStyle bold18 = _getTextStyle(18, FontWeight.w700);
  static TextStyle bold20 = _getTextStyle(20, FontWeight.w700);
  static TextStyle bold22 = _getTextStyle(22, FontWeight.w700);
  static TextStyle bold24 = _getTextStyle(24, FontWeight.w700);

  // ExtraBold
  static TextStyle extraBold12 = _getTextStyle(12, FontWeight.w800);
  static TextStyle extraBold14 = _getTextStyle(14, FontWeight.w800);
  static TextStyle extraBold16 = _getTextStyle(16, FontWeight.w800);
  static TextStyle extraBold18 = _getTextStyle(18, FontWeight.w800);
  static TextStyle extraBold20 = _getTextStyle(20, FontWeight.w800);
  static TextStyle extraBold22 = _getTextStyle(22, FontWeight.w800);
  static TextStyle extraBold24 = _getTextStyle(24, FontWeight.w800);

  // Black
  static TextStyle black12 = _getTextStyle(12, FontWeight.w900);
  static TextStyle black14 = _getTextStyle(14, FontWeight.w900);
  static TextStyle black16 = _getTextStyle(16, FontWeight.w900);
  static TextStyle black18 = _getTextStyle(18, FontWeight.w900);
  static TextStyle black20 = _getTextStyle(20, FontWeight.w900);
  static TextStyle black22 = _getTextStyle(22, FontWeight.w900);
  static TextStyle black24 = _getTextStyle(24, FontWeight.w900);
}
