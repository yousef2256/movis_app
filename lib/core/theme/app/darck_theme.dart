import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: "Rubik",
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF000000),
    primary: Color(0xFFdb0000),
    secondary: Color.fromARGB(255, 53, 47, 47),
    tertiary: Color(0xFF121212),
    onPrimary: Color(0xFF831010),
    onSecondary: Color(0xFFffffff),
  ),
);
