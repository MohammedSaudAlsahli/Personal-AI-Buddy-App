import 'package:flutter/material.dart';
import 'package:flutter_application/componants/background/accent_background.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';
import 'package:flutter_application/componants/containers/text_container.dart';
import 'package:flutter_application/constant/colors.dart';

class VoiceChatScreen extends StatelessWidget {
  const VoiceChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Stack(
        children: [
          const CustomAccentBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextContainer(
                    height: 33,
                    width: 91,
                    fontSize: 14,
                    child: 'AI Buddy',
                    isBold: true,
                  ),
                  const Text(
                    'online',
                    style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                      'assets/Personal AI Buddy App (Community)/Asset 3 1.png'),
                  const Text(
                    'What are the top trending collaborating interface design tools 2023',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        color: CustomColors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleContainer(
                        icon: Icons.keyboard,
                        containerColor: CustomColors.purple,
                        containerSize: 50,
                      ),
                      CircleContainer(
                        icon: Icons.mic,
                        containerColor: CustomColors.green,
                        containerSize: 100,
                      ),
                      CircleContainer(
                        icon: Icons.close,
                        containerColor: CustomColors.blackShade,
                        containerSize: 50,
                        iconColor: CustomColors.white,
                        isBorder: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
