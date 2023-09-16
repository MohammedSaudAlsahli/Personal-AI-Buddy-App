import 'package:flutter/material.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';
import 'package:flutter_application/utils/extension.dart';

class HistoryConteiner extends StatelessWidget {
  const HistoryConteiner({
    super.key,
    required this.bgColor,
    required this.fgColor,
    required this.icon,
    required this.text,
    this.onPressed,
  });
  final Color bgColor;
  final Color fgColor;
  final IconData icon;
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: context.width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleContainer(
            color: fgColor,
            icon: icon,
          ),
          Text(text),
          IconButton(onPressed: onPressed, icon: const Icon(Icons.more_vert))
        ],
      ),
    );
  }
}