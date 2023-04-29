// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_first/Screens/home.dart';
import 'package:flutter_first/Screens/OnboardingScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
          )),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );

  }
}
