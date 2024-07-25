import 'package:flutter/material.dart';
import 'package:vedhas/core/theme/text_styles.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins', // Replace with your desired font family
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.regular16,
    bodyMedium: AppTextStyles.regular14,
    bodySmall: AppTextStyles.regular12,
    titleLarge: AppTextStyles.bold20,
    titleMedium: AppTextStyles.semiBold18,
    titleSmall: AppTextStyles.semiBold16,
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.teal, // Vibrant primary color
    onPrimary: Colors.white,
    secondary: Colors.amber, // Vibrant secondary color
    onSecondary: Colors.black,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.grey[200]!, // Light surface for contrast
    onSurface: Colors.black,
    error: Colors.redAccent, // Slightly brighter error color
    onError: Colors.white,
  ),
  primaryColor: Colors.teal,
  hintColor: Colors.tealAccent, // Slightly lighter hint color
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    color: Colors.teal,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.amber, // Matches the secondary color
    textTheme: ButtonTextTheme.primary,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.teal, // Consistent with the light theme
    onPrimary: Colors.white,
    secondary: Colors.amber, // Vibrant accent in dark mode
    onSecondary: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.grey[850]!, // Dark surface for depth
    onSurface: Colors.white,
    error: Colors.redAccent, // Brighter error for visibility
    onError: Colors.black,
  ),
  primaryColor: Colors.teal,
  hintColor: Colors.tealAccent, // Consistent hint color
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    color: Colors.teal,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  fontFamily: 'Poppins', // Replace with your desired font family
  textTheme: TextTheme(
    bodyLarge: AppTextStyles.regular16,
    bodyMedium: AppTextStyles.regular14,
    bodySmall: AppTextStyles.regular12,
    titleLarge: AppTextStyles.bold20,
    titleMedium: AppTextStyles.semiBold18,
    titleSmall: AppTextStyles.semiBold16,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.amber, // Matches the secondary color
    textTheme: ButtonTextTheme.primary,
  ),
);
