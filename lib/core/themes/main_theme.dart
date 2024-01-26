import 'package:flutter/material.dart';

class ThemeAnt {
  static ThemeData get antWhite {
    return ThemeData(
      primarySwatch: Colors.deepOrange,
      primaryColor: const Color.fromARGB(255, 238, 110, 12),
      primaryColorLight: Colors.deepOrange.shade200,
      textTheme: TextTheme(
        displaySmall: const TextStyle(
          color: Color.fromARGB(255, 40, 190, 255),
          fontSize: 12,
        ),
        displayLarge: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 40, 190, 255),
        ),
        headlineMedium: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: const TextStyle(
          color: Colors.indigo,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 12,
        ),
        bodyLarge: const TextStyle(
          color: Color.fromARGB(255, 80, 187, 245),
          fontSize: 16,
        ),
      ),
    );
  }
}
