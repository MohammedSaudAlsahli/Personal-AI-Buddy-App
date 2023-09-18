import 'package:flutter/material.dart';
import 'package:flutter_application/componants/buttons/custom_elevated_button.dart';
import 'package:flutter_application/componants/text/custom_text.dart';
import 'package:flutter_application/componants/background/main_background.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/screens/auth/sign_in.dart';

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
          const CustomMainBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
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
              const CustomText(
                text: 'How may I help you today!',
              ),
              CustomElevatedButton(
                child: 'Get Started',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
