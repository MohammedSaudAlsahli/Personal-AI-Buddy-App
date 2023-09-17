import 'package:flutter/material.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';
import 'package:flutter_application/constant/colors.dart';
import 'package:flutter_application/utils/extension.dart';

class HistoryConteiner extends StatelessWidget {
  const HistoryConteiner({
    super.key,
    this.onPressed,
    required this.icon,
    required this.text,
    required this.bgColor,
    this.fgColor = Colors.black12,
  });
  final String text;
  final Color fgColor;
  final Color bgColor;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: context.width,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColors.white, width: 0.3),
        color: bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleContainer(
            icon: icon,
            containerColor: fgColor,
          ),
          Text(
            text,
            style: const TextStyle(color: CustomColors.white),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.more_vert,
              color: CustomColors.white,
            ),
          )
        ],
      ),
    );
  }
}
