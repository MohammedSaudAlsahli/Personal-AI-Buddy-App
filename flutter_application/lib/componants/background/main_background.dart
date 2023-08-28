import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomMainBackground extends StatelessWidget {
  const CustomMainBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            'assets/Personal AI Buddy App (Community)/Group 1.png',
            color: CustomColors.white,
            fit: BoxFit.none,
            scale: 3,
            height: 700,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: CustomColors.black.withOpacity(0.5),
          ),
        ),
        Positioned(
          top: 250,
          right: 0,
          left: 0,
          child: Transform.rotate(
            angle: 45,
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.green.withAlpha(90),
                    blurRadius: 90.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
