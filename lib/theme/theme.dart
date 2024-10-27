import 'dart:math';

import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  primarySwatch: Colors.pink,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.pink.shade50,
  colorScheme: ColorScheme.light(
    primary: Colors.pink.shade100,
    secondary: Colors.pink.shade400,
    tertiary: Colors.pink.shade700,
    inversePrimary: Colors.pink.shade700
  ),
);

ThemeData darkMode = ThemeData(
  primarySwatch: Colors.grey,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade400,
    secondary: Colors.grey.shade600,
    tertiary: Colors.pink.shade300,
    inversePrimary: Colors.grey.shade200,
  ),
);