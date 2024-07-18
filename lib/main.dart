import 'package:flutter/material.dart';
import 'package:supchat/pages/home_page.dart';
import 'package:supchat/styles/dark_theme.dart';
import 'package:supchat/styles/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
