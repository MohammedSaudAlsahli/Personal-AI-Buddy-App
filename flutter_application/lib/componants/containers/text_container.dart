import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.fontSize,
    this.isBold = false,
  });

  final double height;
  final double width;
  final String child;
  final double fontSize;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      width: width,
      height: height,
      child: Center(
        child: Text(
          child,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
