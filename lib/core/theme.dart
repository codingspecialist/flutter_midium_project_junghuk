import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(color: Colors.white, fontSize: 24),
    ),
  );
}
