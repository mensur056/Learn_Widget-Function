import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData redTheme = ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.red, elevation: 0, centerTitle: true),
    scaffoldBackgroundColor: Colors.red,
  );
  final ThemeData greenTheme = ThemeData(
      appBarTheme: const AppBarTheme(color: Colors.green, elevation: 0, centerTitle: true),
      scaffoldBackgroundColor: Colors.green);
}
