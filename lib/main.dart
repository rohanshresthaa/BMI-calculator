import 'package:bmi/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Color(0xFF6C4AB6),
          backgroundColor: Color(0xFFB9E0FF),
        ),
        primaryColor: const Color(0xFF6C4AB6),
        scaffoldBackgroundColor: const Color(0xFF8D9EFF),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
