import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/repository/user_repository.dart';
import 'app/modules/login/binding/login_binding.dart';
import 'app/modules/login/view/login_view.dart';
import 'core/theme/app_theme.dart';
import 'global_controller.dart';
import 'services/api_service.dart';
import 'services/storage_service.dart';
import 'translations/app_translations.dart';

void main() async {
  await GetStorage.init();
  await initServices();

  runApp(MyApp());
}

Future<void> initServices() async {
  await Get.putAsync<StorageService>(() async => StorageService().init());
  // await Get.putAsync(() => LogService().init());
  // await Get.putAsync(() => WebSocketService().init());
  Get.put(ApiService());
  Get.put(UserRepository(Get.find<ApiService>(), Get.find<StorageService>()));
  Get.put(GlobalController());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalController globalController = Get.find<GlobalController>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BullForce',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: globalController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      initialBinding: LoginBinding(),
      fallbackLocale: const Locale('en', 'US'),
      home: LoginView(),
    );
  }
}
