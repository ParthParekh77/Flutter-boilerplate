import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/data/repository/user_repository.dart';
import 'package:vedhas/app/modules/home/binding/home_binding.dart';
import 'package:vedhas/app/modules/home/view/home_view.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
  final nameTextController = TextEditingController();
  final jobTextController = TextEditingController();
  final UserRepository userRepository = Get.find<UserRepository>();

  Future<void> login() async {
    isLoading.value = true;
    try {
      var user = await userRepository.login(nameTextController.text, jobTextController.text);

      if (user.name.isNotEmpty) {
        Get.to(() => const HomeView(), binding: HomeBinding());
      } else {
        Get.snackbar('Error', 'Login failed');
      }
    } catch (e, trace) {
      print(trace);
      Get.snackbar('Error', 'Login failed: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }
}
