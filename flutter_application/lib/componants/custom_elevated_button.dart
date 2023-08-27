import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.child,
  });
  final String child;
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
      onPressed: () {},
      child: Text(child),
    );
  }
}
