import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'How may I help you today!',
      style: TextStyle(
          color: CustomColors.white, fontSize: 36, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    );
  }
}
