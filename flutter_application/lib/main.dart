import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/screens/auth/sign_up.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.black,
      body: SignUpScreen(),
    );
  }
}
