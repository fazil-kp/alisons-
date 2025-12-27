import 'package:flutter/material.dart';

class AppTheme {
  // Colors based on Figma design
  static const Color primaryColor = Color(0xFF8B4513); // Brown
  static const Color darkGrey = Color(0xFF424242);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color orange = Color(0xFFFF9800);
  static const Color green = Color(0xFF4CAF50);
  static const Color purple = Color(0xFF9C27B0);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor, primary: primaryColor, secondary: green, surface: white, background: lightGrey),
      scaffoldBackgroundColor: lightGrey,
      appBarTheme: const AppBarTheme(backgroundColor: darkGrey, foregroundColor: white, elevation: 0, centerTitle: true),
      cardTheme: CardThemeData(
        color: white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: darkGrey),
        displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: darkGrey),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: darkGrey),
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: darkGrey),
        bodyLarge: TextStyle(fontSize: 16, color: darkGrey),
        bodyMedium: TextStyle(fontSize: 14, color: darkGrey),
      ),
    );
  }
}
