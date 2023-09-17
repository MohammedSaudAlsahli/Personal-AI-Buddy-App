import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.image,
    required this.scale,
  });
  final String image;
  final double scale;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      color: CustomColors.white.withOpacity(0.3),
      fit: BoxFit.none,
      scale: scale,
    );
  }
}
