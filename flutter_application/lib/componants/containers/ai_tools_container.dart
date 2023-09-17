import 'package:flutter/material.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';

class AiToolsContainer extends StatelessWidget {
  const AiToolsContainer({
    super.key,
    required this.height,
    required this.width,
    required this.icon,
    required this.text,
    required this.isBold,
    required this.bgColor,
    required this.fontSize,
    this.fgColor = Colors.black12,
  });

  final String text;
  final bool isBold;
  final double width;
  final Color fgColor;
  final double height;
  final IconData icon;
  final Color bgColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleContainer(containerColor: fgColor, icon: icon),
              Image.asset(
                  'assets/Personal AI Buddy App (Community)/🦆 icon _arrow forward_.png')
            ],
          ),
          Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: isBold ? FontWeight.w700 : FontWeight.normal),
          )
        ],
      ),
    );
  }
}
