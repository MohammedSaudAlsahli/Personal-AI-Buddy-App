import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/constant/spaceing.dart';
import 'package:flutter_application/componants/background/accent_background.dart';
import 'package:flutter_application/componants/containers/ai_tools_container.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';
import 'package:flutter_application/componants/containers/history_conteiner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomAccentBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleContainer(
                      isBorder: true,
                      icon: Icons.menu,
                      iconColor: CustomColors.white,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Hi, name',
                          style: TextStyle(color: CustomColors.white),
                        ),
                        kHSpace4,
                        Image.asset(
                          'assets/Personal AI Buddy App (Community)/👋.png',
                          scale: 3,
                        )
                      ],
                    ),
                    Image.asset(
                        'assets/Personal AI Buddy App (Community)/Ellipse 78.png'),
                  ],
                ),
                const Text(
                  'How may I help you today?',
                  style: TextStyle(
                      color: CustomColors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w600),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AiToolsContainer(
                      width: 183,
                      height: 216,
                      fontSize: 34,
                      isBold: true,
                      text: 'Talk with Bot',
                      icon: Icons.record_voice_over,
                      bgColor: CustomColors.green,
                    ),
                    kWSpace8,
                    Column(
                      children: [
                        AiToolsContainer(
                          width: 183,
                          height: 104,
                          fontSize: 16,
                          isBold: false,
                          icon: Icons.chat,
                          text: 'Chat with Bot',
                          bgColor: CustomColors.purple,
                        ),
                        kHSpace8,
                        AiToolsContainer(
                          width: 183,
                          height: 104,
                          fontSize: 16,
                          isBold: false,
                          text: 'Search by Image',
                          bgColor: CustomColors.pink,
                          icon: Icons.image_search_rounded,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20,
                            color: CustomColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: CustomColors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    HistoryConteiner(
                      icon: Icons.abc,
                      fgColor: CustomColors.green,
                      bgColor: CustomColors.blackShade,
                      text: 'I need some UI inspiration for dark...',
                      onPressed: () {},
                    ),
                    kHSpace8,
                    HistoryConteiner(
                      icon: Icons.abc,
                      fgColor: CustomColors.purple,
                      bgColor: CustomColors.blackShade,
                      text: 'Show me some color palettes for AI...',
                      onPressed: () {},
                    ),
                    kHSpace8,
                    HistoryConteiner(
                      icon: Icons.abc,
                      fgColor: CustomColors.pink,
                      bgColor: CustomColors.blackShade,
                      text: 'What are the best mobile apps 2023...',
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
