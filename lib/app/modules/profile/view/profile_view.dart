import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/global_widgets/custom_text_field.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../global_widgets/custom_button.dart';
import '../../../global_widgets/custom_text.dart';
import '../controller/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.semiBold24(controller.user.value?.name ?? ''),
              const SizedBox(height: 20),
              CustomText.regular16(
                controller.user.value?.job ?? '',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: controller.nameTextController,
                hintText: StringConstants.name.tr,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () => controller.updateProfile(),
                text: StringConstants.updateProfile.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
