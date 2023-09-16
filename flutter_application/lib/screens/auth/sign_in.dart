import 'package:flutter/material.dart';
import 'package:flutter_application/componants/background/accent_background.dart';
import 'package:flutter_application/componants/buttons/custom_elevated_button.dart';
import 'package:flutter_application/componants/text/custom_text_field.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/constant/spaceing.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomAccentBackground(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hint: 'User Name',
              onPressed: () {},
            ),
            kHSpace16,
            CustomTextField(
              hint: 'Password',
              onPressed: () {},
              isIcon: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have account?',
                  style: TextStyle(
                    color: CustomColors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                  ),
                ),
              ],
            ),
            const CustomElevatedButton(
              child: 'Sign in',
            ),
          ],
        ),
      ],
    );
  }
}
