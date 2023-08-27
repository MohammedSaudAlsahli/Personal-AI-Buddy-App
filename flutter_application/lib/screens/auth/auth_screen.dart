import 'package:flutter/material.dart';
import 'package:flutter_application/componants/custom_elevated_button.dart';
import 'package:flutter_application/componants/custom_text.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/utils/extension.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Stack(
        children: [
          SizedBox(
            height: context.height,
            width: context.width,
          ),
          Center(
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 200,
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
          Center(
            child: Image.asset(
              'assets/Personal AI Buddy App (Community)/Group 1.png',
              color: CustomColors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: CustomColors.green,
                    borderRadius: BorderRadius.circular(16)),
                width: 150,
                height: 50,
                child: const Center(
                  child: Text(
                    'Personal AI Buddy',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Image.asset('assets/Personal AI Buddy App (Community)/Group.png'),
              const CustomText(),
              const CustomElevatedButton(
                child: 'Get Started',
              ),
            ],
          )
        ],
      ),
    );
  }
}
