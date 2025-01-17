import 'package:flutter/material.dart';
import 'package:movis_app/core/theme/app/color_conestents.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: "Rubik",
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: AppColors.surface,
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    onPrimary: AppColors.onPrimary,
    onSecondary: AppColors.onSecondary,
  ),
);
