import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    appBarTheme: const AppBarTheme(
     // backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 4,
    ),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );

  static ThemeData dark = ThemeData.dark();
}