import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign textAlign;

  const CustomText._({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color,
    this.textAlign = TextAlign.left,
  });

  CustomText copyWith({
    String? text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? textAlign,
  }) {
    return CustomText._(
      text: text ?? this.text,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      color: color ?? this.color,
      textAlign: textAlign ?? this.textAlign,
    );
  }

  // Predefined styles
  static CustomText light12(String text) => CustomText._(text: text, fontSize: 12, fontWeight: FontWeight.w300);
  static CustomText light14(String text) => CustomText._(text: text, fontSize: 14, fontWeight: FontWeight.w300);
  static CustomText light16(String text) => CustomText._(text: text, fontSize: 16, fontWeight: FontWeight.w300);
  static CustomText light18(String text) => CustomText._(text: text, fontSize: 18, fontWeight: FontWeight.w300);
  static CustomText light20(String text) => CustomText._(text: text, fontSize: 20, fontWeight: FontWeight.w300);
  static CustomText light22(String text) => CustomText._(text: text, fontSize: 22, fontWeight: FontWeight.w300);
  static CustomText light24(String text) => CustomText._(text: text, fontSize: 24, fontWeight: FontWeight.w300);

  // Regular weight (w400)
  static CustomText regular12(String text) => CustomText._(text: text, fontSize: 12, fontWeight: FontWeight.normal);
  static CustomText regular14(String text) => CustomText._(text: text, fontSize: 14, fontWeight: FontWeight.normal);
  static CustomText regular16(String text) => CustomText._(text: text, fontSize: 16, fontWeight: FontWeight.normal);
  static CustomText regular18(String text) => CustomText._(text: text, fontSize: 18, fontWeight: FontWeight.normal);
  static CustomText regular20(String text) => CustomText._(text: text, fontSize: 20, fontWeight: FontWeight.normal);
  static CustomText regular22(String text) => CustomText._(text: text, fontSize: 22, fontWeight: FontWeight.normal);
  static CustomText regular24(String text) => CustomText._(text: text, fontSize: 24, fontWeight: FontWeight.normal);

  // Medium weight (w500)
  static CustomText medium12(String text) => CustomText._(text: text, fontSize: 12, fontWeight: FontWeight.w500);
  static CustomText medium14(String text) => CustomText._(text: text, fontSize: 14, fontWeight: FontWeight.w500);
  static CustomText medium16(String text) => CustomText._(text: text, fontSize: 16, fontWeight: FontWeight.w500);
  static CustomText medium18(String text) => CustomText._(text: text, fontSize: 18, fontWeight: FontWeight.w500);
  static CustomText medium20(String text) => CustomText._(text: text, fontSize: 20, fontWeight: FontWeight.w500);
  static CustomText medium22(String text) => CustomText._(text: text, fontSize: 22, fontWeight: FontWeight.w500);
  static CustomText medium24(String text) => CustomText._(text: text, fontSize: 24, fontWeight: FontWeight.w500);

  // SemiBold weight (w600)
  static CustomText semiBold12(String text) => CustomText._(text: text, fontSize: 12, fontWeight: FontWeight.w600);
  static CustomText semiBold14(String text) => CustomText._(text: text, fontSize: 14, fontWeight: FontWeight.w600);
  static CustomText semiBold16(String text) => CustomText._(text: text, fontSize: 16, fontWeight: FontWeight.w600);
  static CustomText semiBold18(String text) => CustomText._(text: text, fontSize: 18, fontWeight: FontWeight.w600);
  static CustomText semiBold20(String text) => CustomText._(text: text, fontSize: 20, fontWeight: FontWeight.w600);
  static CustomText semiBold22(String text) => CustomText._(text: text, fontSize: 22, fontWeight: FontWeight.w600);
  static CustomText semiBold24(String text) => CustomText._(text: text, fontSize: 24, fontWeight: FontWeight.w600);

  // Bold weight (w700)
  static CustomText bold12(String text) => CustomText._(text: text, fontSize: 12, fontWeight: FontWeight.bold);
  static CustomText bold14(String text) => CustomText._(text: text, fontSize: 14, fontWeight: FontWeight.bold);
  static CustomText bold16(String text) => CustomText._(text: text, fontSize: 16, fontWeight: FontWeight.bold);
  static CustomText bold18(String text) => CustomText._(text: text, fontSize: 18, fontWeight: FontWeight.bold);
  static CustomText bold20(String text) => CustomText._(text: text, fontSize: 20, fontWeight: FontWeight.bold);
  static CustomText bold22(String text) => CustomText._(text: text, fontSize: 22, fontWeight: FontWeight.bold);
  static CustomText bold24(String text) => CustomText._(text: text, fontSize: 24, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
