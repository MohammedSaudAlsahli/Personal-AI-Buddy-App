import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
  });
  final String child;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: const Size(400, 65),
        elevation: 1,
        foregroundColor: CustomColors.black,
        backgroundColor: CustomColors.white,
      ),
      onPressed: onPressed,
      child: Text(child),
    );
  }
}
