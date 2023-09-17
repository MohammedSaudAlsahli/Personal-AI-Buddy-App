import 'package:flutter/material.dart';
import 'package:flutter_application/componants/containers/circle_container.dart';

/* need to fix this containers, it shoud be row -> column -> icon*/
class AiToolsContainer extends StatelessWidget {
  const AiToolsContainer({
    super.key,
    this.onTap,
    required this.text,
    required this.icon,
    required this.width,
    required this.isBold,
    required this.height,
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
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                const Icon(Icons.arrow_outward_rounded)
              ],
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: isBold ? FontWeight.w700 : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
