import 'package:flutter/material.dart';
import 'package:flutter_application/componants/background/accent_background.dart';
import 'package:flutter_application/componants/buttons/custom_elevated_button.dart';
import 'package:flutter_application/componants/text/custom_text.dart';
import 'package:flutter_application/componants/text/custom_text_field.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/constant/spaceing.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const CustomAccentBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: '',
              ),
              const CustomTextField(
                hint: 'Name',
              ),
              kHSpace16,
              const CustomTextField(
                hint: 'Email',
              ),
              kHSpace16,
              CustomTextField(
                onPressed: () {},
                hint: 'Password',
                isIcon: true,
              ),
              kHSpace16,
              CustomTextField(
                onPressed: () {},
                hint: 'Confirm Password',
                isIcon: true,
              ),
              kHSpace64,
              CustomElevatedButton(
                onPressed: () {},
                child: 'Sign Up',
              )
            ],
          )
        ],
      ),
    );
  }
}
