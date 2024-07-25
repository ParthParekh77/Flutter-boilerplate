import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../global_widgets/custom_button.dart';
import '../../../global_widgets/custom_text.dart';
import '../../../global_widgets/custom_text_field.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(StringConstants.login.tr)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.semiBold24(StringConstants.welcome.tr),
            const SizedBox(height: 20),
            CustomTextField(
              controller: controller.nameTextController,
              hintText: StringConstants.name.tr,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: controller.jobTextController,
              hintText: StringConstants.job.tr,
            ),
            const SizedBox(height: 20),
            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomButton(
                    onPressed: () => controller.login(),
                    text: StringConstants.login.tr,
                  )),
          ],
        ),
      ),
    );
  }
}
