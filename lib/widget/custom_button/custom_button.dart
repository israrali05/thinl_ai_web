import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function()? onPressed;
  double height;
  double width;
  TextStyle? style;

  CustomButton(
      {super.key,
      this.style,
      required this.text,
      this.height = 35,
      this.width = double.infinity,
      this.backgroundColor = const Color(0xFF3871C1),
      required this.onPressed,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.primary),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
