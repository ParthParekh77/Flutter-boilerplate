import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vedhas/app/data/repository/user_repository.dart';
import 'package:vedhas/app/domain/usecase/login_usecase.dart';
import 'package:vedhas/app/modules/home/binding/home_binding.dart';
import 'package:vedhas/app/modules/home/view/home_view.dart';

class LoginController extends GetxController {
  final isLoading = false.obs;
  final nameTextController = TextEditingController();
  final jobTextController = TextEditingController();
  // final UserRepository userRepository = Get.find<UserRepository>();
  final LoginUser userUseCase = Get.find<LoginUser>();

  Future<void> login() async {
    isLoading.value = true;
    try {
      LoginUserParam loginUserParam = LoginUserParam(nameTextController.text, jobTextController.text);
      var result = await userUseCase(loginUserParam);
      result.fold((failure) {
        Get.snackbar('Error', 'Login failed');
      }, (response) async {
        Get.to(() => const HomeView(), binding: HomeBinding());
      });
    } catch (e, trace) {
      print(trace);
      Get.snackbar('Error', 'Login failed: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  // Future<void> login() async {
  //   isLoading.value = true;
  //   try {
  //     var user = await userRepository.login(nameTextController.text, jobTextController.text);
  //
  //     if (user.name.isNotEmpty) {
  //       Get.to(() => const HomeView(), binding: HomeBinding());
  //     } else {
  //       Get.snackbar('Error', 'Login failed');
  //     }
  //   } catch (e, trace) {
  //     print(trace);
  //     Get.snackbar('Error', 'Login failed: ${e.toString()}');
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }
}
