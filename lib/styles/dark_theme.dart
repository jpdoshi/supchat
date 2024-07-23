import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.light(
        surface: Color(0xff121212),
        primary: Color(0xffFAFAFA),
        secondary: Color(0xff9e9e9e),
        tertiary: Color(0xff212121),
        inversePrimary: Color(0xff242424)
    ),
    textTheme: const TextTheme(
        titleMedium: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Color(0xff121212)
    ),
    iconTheme: const IconThemeData(
        color: Colors.white
    ),
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(Colors.white),
        )
    )
);