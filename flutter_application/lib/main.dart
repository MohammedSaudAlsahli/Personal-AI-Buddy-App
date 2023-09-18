import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/screens/auth/auth_screen.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthScreen();
  }
}
