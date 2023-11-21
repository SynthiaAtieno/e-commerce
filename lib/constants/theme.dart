import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.red,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      textStyle: const TextStyle(fontSize: 18.0),
      disabledBackgroundColor: Colors.grey
    )
  )
);