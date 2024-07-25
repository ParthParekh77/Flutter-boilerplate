import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/data/repository/user_repository.dart';
import 'package:vedhas/app/modules/login/model/user_model.dart';
import 'package:vedhas/services/storage_service.dart';

import '../../../../core/constants/app_constants.dart';

class ProfileController extends GetxController {
  final Rx<UserModel?> user = Rx<UserModel?>(null);
  final nameTextController = TextEditingController();
  final UserRepository userRepository = Get.find<UserRepository>();

  @override
  void onInit() {
    super.onInit();
    loadUser();
  }

  void loadUser() {
    final userData = StorageService().read(key: AppConstants.user);
    if (userData != null) {
      user.value = userModelFromJson(userData);
    }
    nameTextController.text = user.value!.name;
  }

  Future<void> updateProfile() async {
    if (user.value != null) {
      try {
        var updatedUser = UserModel(id: user.value!.id, name: nameTextController.text, job: user.value!.job);
        final result = await userRepository.updateUser(updatedUser);
        user.value = result;
        Get.snackbar('Success', 'Profile updated successfully');
      } catch (e) {
        Get.snackbar('Error', 'Failed to update profile: ${e.toString()}');
      }
    }
  }
}
