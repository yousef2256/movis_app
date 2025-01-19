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
  appBarTheme:const AppBarTheme(

    color: Colors.black, // Set AppBar background to black
    // backgroundColor: Colors.black, // Set AppBar background to black
    elevation: 0, // Remove shadow
    iconTheme:  IconThemeData(color: Colors.white), // Icon color
    titleTextStyle:  TextStyle(
      color: Colors.white, // Title color
      fontSize: 20, // Title font size
      fontWeight: FontWeight.bold,
    ),
  ),
);
