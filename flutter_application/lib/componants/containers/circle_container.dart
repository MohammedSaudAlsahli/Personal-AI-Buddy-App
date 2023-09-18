import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    required this.icon,
    this.containerColor,
    this.isBorder = false,
    this.iconColor = CustomColors.black,
    this.containerSize = 40,
  });
  final IconData icon;
  final Color iconColor;
  final Color? containerColor;
  final bool isBorder;
  final double containerSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerSize,
      width: containerSize,
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
        border: isBorder
            ? Border.all(
                color: CustomColors.white.withOpacity(0.5),
              )
            : null,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: containerSize / 2,
      ),
    );
  }
}
