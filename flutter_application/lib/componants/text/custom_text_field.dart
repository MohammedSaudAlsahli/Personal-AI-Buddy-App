import 'package:flutter/material.dart';
import 'package:flutter_application/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint = 'Hint Text',
    this.onPressed,
    this.icon = Icons.remove_red_eye,
    this.isIcon = false,
    this.widht = 400,
    this.seePassword = false,
    this.controller,
    this.onChanged,
  });

  final String hint;
  final bool isIcon;
  final double widht;
  final IconData icon;
  final bool seePassword;
  final Function()? onPressed;
  final Function()? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      child: TextField(
        cursorColor: CustomColors.green,
        obscureText: seePassword ? false : true,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              color: CustomColors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
            borderSide: const BorderSide(
              color: CustomColors.green,
              width: 2,
            ),
          ),
          filled: true,
          fillColor: CustomColors.grey,
          hintText: hint,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              isIcon ? icon : null,
            ),
          ),
        ),
      ),
    );
  }
}
