import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryTurquoise = Color(0xFF00FFD1);
  static const Color darkNavy = Color(0xFF0A1929);
  static const Color cardNavy = Color(0xFF1D1E33);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkNavy,
      primaryColor: primaryTurquoise,
      cardColor: cardNavy,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xFFF0F4F8),
      primaryColor: const Color(0xFF00BFA5),
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
    );
  }
}
