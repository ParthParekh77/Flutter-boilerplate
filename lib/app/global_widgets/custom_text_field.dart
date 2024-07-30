import 'package:flutter/material.dart';

import '../../core/theme/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  const CustomTextField({super.key, required this.hintText, this.obscureText = false, this.keyboardType = TextInputType.text, this.onChanged, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: AppTextStyles.regular14,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.light14,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
