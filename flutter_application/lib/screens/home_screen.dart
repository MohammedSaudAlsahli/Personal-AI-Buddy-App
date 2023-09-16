import 'package:flutter/material.dart';
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
                        color: Colors.amber, icon: Icons.menu),
                    Row(
                      children: [
                        const Text(
                          'Hi, name',
                          style: TextStyle(color: Colors.white),
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
                  style: TextStyle(color: Colors.amber, fontSize: 42),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AiToolsContainer(
                      height: 216,
                      width: 183,
                      bgColor: Colors.amber,
                      fgColor: Colors.amberAccent,
                      icon: Icons.record_voice_over,
                      text: 'Talk with Bot',
                      fontSize: 34,
                      isBold: true,
                    ),
                    kWSpace8,
                    Column(
                      children: [
                        AiToolsContainer(
                          height: 104,
                          width: 183,
                          bgColor: Colors.red,
                          fgColor: Colors.redAccent,
                          icon: Icons.chat,
                          text: 'Chat with Bot',
                          fontSize: 16,
                          isBold: false,
                        ),
                        kHSpace8,
                        AiToolsContainer(
                          height: 104,
                          width: 183,
                          bgColor: Colors.blue,
                          fgColor: Colors.blueAccent,
                          icon: Icons.image_search_rounded,
                          text: 'Search by Image',
                          fontSize: 16,
                          isBold: false,
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
                              color: Colors.amber,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ],
                    ),
                    HistoryConteiner(
                      bgColor: Colors.amber,
                      fgColor: Colors.amberAccent,
                      icon: Icons.abc,
                      text: 'I need some UI inspiration for dark...',
                      onPressed: () {},
                    ),
                    kHSpace8,
                    HistoryConteiner(
                      bgColor: Colors.amber,
                      fgColor: Colors.amberAccent,
                      icon: Icons.abc,
                      text: 'Show me some color palettes for AI...',
                      onPressed: () {},
                    ),
                    kHSpace8,
                    HistoryConteiner(
                      bgColor: Colors.amber,
                      fgColor: Colors.amberAccent,
                      icon: Icons.abc,
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
