import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedhas/core/theme/text_styles.dart';

import 'app/data/repository/user_repository.dart';

class GlobalController extends GetxController {
  final RxString _currentLanguage = "en".obs;
  final RxBool _isRTL = false.obs;

  final Rx<ThemeData> _lightThemeData = ThemeData.light().obs;
  final Rx<ThemeData> _darkThemeData = ThemeData.dark().obs;
  final RxBool _isDarkMode = false.obs;

  String get currentLanguage => _currentLanguage.value;
  bool get isRTL => _isRTL.value;
  ThemeData get lightTheme => _lightThemeData.value;
  ThemeData get darkTheme => _darkThemeData.value;
  bool get isDarkMode => _isDarkMode.value;
  ThemeData get currentTheme => isDarkMode ? darkTheme : lightTheme;
  final UserRepository userRepository = Get.find<UserRepository>();

  @override
  void onInit() {
    super.onInit();
    getDynamicTheme();
  }

  void changeLanguage(String languageCode) {
    _currentLanguage.value = languageCode;
    _isRTL.value = (languageCode == "ar");
    Get.updateLocale(Locale(languageCode));
  }

  Future<void> getDynamicTheme() async {
    try {
      final response = await userRepository.getDynamicTheme();
      final data = json.decode(response.body);
      updateThemes(data);
    } catch (e) {
      useDefaultThemes();
    }
  }

  void updateThemes(Map<String, dynamic> data) {
    _lightThemeData.value = createTheme(data['lightTheme'], isLight: true);
    _darkThemeData.value = createTheme(data['darkTheme'], isLight: false);
  }

  void useDefaultThemes() {
    _lightThemeData.value = lightTheme;
    _darkThemeData.value = darkTheme;
  }

  ThemeData createTheme(Map<String, dynamic> themeData, {required bool isLight}) {
    return ThemeData(
      fontFamily: themeData['fontFamily'] ?? 'Poppins',
      textTheme: TextTheme(
        bodyLarge: AppTextStyles.regular16,
        bodyMedium: AppTextStyles.regular14,
        bodySmall: AppTextStyles.regular12,
        titleLarge: AppTextStyles.bold20,
        titleMedium: AppTextStyles.semiBold18,
        titleSmall: AppTextStyles.semiBold16,
      ),
      brightness: isLight ? Brightness.light : Brightness.dark,
      colorScheme: ColorScheme(
        brightness: isLight ? Brightness.light : Brightness.dark,
        primary: _hexToColor(themeData['primaryColor'] ?? (isLight ? '#009688' : '#009688')),
        onPrimary: _hexToColor(themeData['onPrimaryColor'] ?? '#FFFFFF'),
        secondary: _hexToColor(themeData['secondaryColor'] ?? '#FFC107'),
        onSecondary: _hexToColor(themeData['onSecondaryColor'] ?? (isLight ? '#000000' : '#000000')),
        background: _hexToColor(themeData['backgroundColor'] ?? (isLight ? '#FFFFFF' : '#000000')),
        onBackground: _hexToColor(themeData['onBackgroundColor'] ?? (isLight ? '#000000' : '#FFFFFF')),
        surface: _hexToColor(themeData['surfaceColor'] ?? (isLight ? '#E0E0E0' : '#424242')),
        onSurface: _hexToColor(themeData['onSurfaceColor'] ?? (isLight ? '#000000' : '#FFFFFF')),
        error: _hexToColor(themeData['errorColor'] ?? '#FF5252'),
        onError: _hexToColor(themeData['onErrorColor'] ?? (isLight ? '#FFFFFF' : '#000000')),
      ),
      primaryColor: _hexToColor(themeData['primaryColor'] ?? (isLight ? '#009688' : '#009688')),
      hintColor: _hexToColor(themeData['hintColor'] ?? '#1DE9B6'),
      scaffoldBackgroundColor: _hexToColor(themeData['scaffoldBackgroundColor'] ?? (isLight ? '#FFFFFF' : '#000000')),
      appBarTheme: AppBarTheme(
        color: _hexToColor(themeData['appBarColor'] ?? '#009688'),
        iconTheme: IconThemeData(color: _hexToColor(themeData['appBarIconColor'] ?? '#FFFFFF')),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: _hexToColor(themeData['buttonColor'] ?? '#FFC107'),
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  Color _hexToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
