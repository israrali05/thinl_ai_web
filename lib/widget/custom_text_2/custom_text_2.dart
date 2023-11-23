import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

class CustomTextTwo extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle textStyle;

  CustomTextTwo({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.left, // Set TextAlign.left as default
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}
