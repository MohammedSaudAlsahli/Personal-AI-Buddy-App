import 'package:flutter/material.dart';
import 'package:flutter_application/componants/custom_elevated_button.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/constant/spaceing.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.black,
        body: Stack(
          children: [
            Center(
              child: Transform.rotate(
                angle: 45,
                child: Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CustomColors.green.withAlpha(90),
                        blurRadius: 120.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 300,
              child: Image.asset(
                'assets/Personal AI Buddy App (Community)/Group 2.png',
                color: CustomColors.white,
                fit: BoxFit.none,
                scale: 7,
              ),
            ),
            Positioned(
              top: 500,
              right: -200,
              child: Image.asset(
                'assets/Personal AI Buddy App (Community)/Group 1.png',
                color: CustomColors.white,
                fit: BoxFit.none,
                scale: 7,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: CustomColors.purpul,
                    border: OutlineInputBorder(),
                    hintText: 'User Name',
                  ),
                ),
                kVSpace16,
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: CustomColors.purpul,
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have account?',
                      style: TextStyle(color: CustomColors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign up'),
                    ),
                  ],
                ),
                const CustomElevatedButton(child: 'Sign in'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
