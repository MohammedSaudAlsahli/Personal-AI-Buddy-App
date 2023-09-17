import 'package:flutter/material.dart';
import 'package:flutter_application/componants/containers/background_image.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomAccentBackground extends StatelessWidget {
  const CustomAccentBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 100,
          right: 300,
          child: BackgroundImage(
              image: 'assets/Personal AI Buddy App (Community)/Group 2.png',
              scale: 4),
        ),
        const Positioned(
          top: 100,
          right: -300,
          child: BackgroundImage(
              image: 'assets/Personal AI Buddy App (Community)/Group 2.png',
              scale: 4),
        ),
        const Positioned(
          top: 400,
          right: 200,
          child: BackgroundImage(
              image: 'assets/Personal AI Buddy App (Community)/Group 1.png',
              scale: 3),
        ),
        const Positioned(
          top: 500,
          right: -200,
          child: BackgroundImage(
              image: 'assets/Personal AI Buddy App (Community)/Group 2.png',
              scale: 5),
        ),
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
                    offset: const Offset(0.0, 3.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: CustomColors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
