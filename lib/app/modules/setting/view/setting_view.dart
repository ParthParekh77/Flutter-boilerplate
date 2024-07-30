import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/global_widgets/custom_text.dart';
import 'package:vedhas/translations/keys.dart';


class SettingsView extends GetView {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText.semiBold24(
        translate(Keys.Screens_Settings),
      ),
    );
  }
}
