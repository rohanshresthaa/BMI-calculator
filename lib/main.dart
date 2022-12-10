import 'package:bmi/screens/home.dart';
import 'package:bmi/screens/results.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Color(0xFF6C4AB6),
          backgroundColor: Color(0xFFB9E0FF),
        ),
        primaryColor: const Color(0xFF6C4AB6),
        scaffoldBackgroundColor: const Color(0xFF8D9EFF),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const home(),
      },
    ),
  );
}
