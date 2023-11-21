import 'package:e_commerce/constants/theme.dart';
import 'package:e_commerce/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: themeData,
      home: const Welcome(),
    );
  }
}
