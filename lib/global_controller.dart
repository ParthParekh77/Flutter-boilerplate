import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/core/constants/app_constants.dart';
import 'package:vedhas/core/theme/app_theme.dart';
import 'package:vedhas/services/storage_service.dart';

class GlobalController extends GetxController {
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = StorageService().read(key: AppConstants.isDarkMode) ?? false;
  }

  ThemeData get themeData => isDarkMode.value ? darkTheme : lightTheme;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(
      isDarkMode.value ? darkTheme : lightTheme,
    );
    StorageService().write(key: AppConstants.isDarkMode, value: isDarkMode.value);
  }

  void toggleLocalization(String val) {
    Get.updateLocale((val == 'En') ? const Locale('en', 'US') : const Locale('hi', 'IN'));
  }
}
