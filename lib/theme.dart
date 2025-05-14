import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xECDFCCB3), // Color de fondo beige
  fontFamily: 'Riveruta', // Asegúrate de tenerlo en pubspec.yaml

  textTheme: const TextTheme(
    displayLarge: TextStyle( // Para títulos grandes
      fontSize: 60,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(37, 67, 54, 1),
    ),
    headlineMedium: TextStyle( // Para "Login"
      fontSize: 42,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 1, 67, 13),
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(218, 131, 89, 1),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white70,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.black),
    ),
  ),
);
