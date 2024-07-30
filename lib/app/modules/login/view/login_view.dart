import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:get/get.dart';
import 'package:vedhas/translations/keys.dart';

import '../../../global_widgets/custom_button.dart';
import '../../../global_widgets/custom_text.dart';
import '../../../global_widgets/custom_text_field.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(translate(Keys.Screens_Login))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.semiBold24(translate(Keys.Screens_Welcome)),
            const SizedBox(height: 20),
            CustomTextField(
              controller: controller.nameTextController,
              hintText: translate(Keys.Screens_Name),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: controller.jobTextController,
              hintText: translate(Keys.Screens_Job),
            ),
            const SizedBox(height: 20),
            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomButton(
                    onPressed: () => controller.login(),
                    text: translate(Keys.Screens_Login),
                  )),
          ],
        ),
      ),
    );
  }
}
