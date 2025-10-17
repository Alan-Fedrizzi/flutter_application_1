import 'package:flutter/material.dart';
import 'colors.dart';

class TpTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: TpColors.primaryDefault,
      onPrimary: TpColors.neutralSolid90,
      secondary: TpColors.primaryHarder,
      onSecondary: TpColors.neutralSolid90,
      error: Colors.red.shade700,
      onError: TpColors.neutralSolid90,
      surface: TpColors.neutralSolid95,
      onSurface: TpColors.neutralSolid10,
    ),
    scaffoldBackgroundColor: TpColors.neutralSolid20,
    appBarTheme: AppBarTheme(
      backgroundColor: TpColors.neutralSolid10,
      foregroundColor: TpColors.neutralSolid90,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: TpColors.neutralSolid90,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(color: TpColors.neutralSolid90),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: TpColors.primaryDefault,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: TpColors.primaryDefault,
      onPrimary: TpColors.neutralSolid10,
      secondary: TpColors.primaryHarder,
      onSecondary: TpColors.neutralSolid10,
      error: Colors.red.shade700,
      onError: TpColors.neutralSolid10,
      surface: TpColors.neutralSolid15,
      onSurface: TpColors.neutralSolid90,
    ),
    scaffoldBackgroundColor: TpColors.neutralSolid80,
    appBarTheme: AppBarTheme(
      backgroundColor: TpColors.neutralSolid90,
      foregroundColor: TpColors.neutralSolid10,
    ),
  );
}
