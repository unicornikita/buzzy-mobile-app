import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
      primary: Color(0xFFFF5C5C),
      secondary: Color(0xFFFFE8E1),
      tertiary: Color(0xFFc67b64)),
  hintColor: const Color(0xFFD6D6D6),
  disabledColor: const Color(0xFF7E7E7E),
  brightness: Brightness.light,
  primaryColor: const Color(0xFFff5c5c),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  ),
);
