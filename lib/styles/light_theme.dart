import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    primary: Color(0xff121212),
    secondary: Color(0xff848484),
    tertiary: Color(0xff666666),
    inverseSurface: Color(0xffF5F5F5),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Colors.black
    ),
  )
);