import 'package:flutter/material.dart';

class Ourbotton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle textStyle;
  final void Function()? ontap;
  const Ourbotton(
      {super.key,
      required this.text,
      required this.height,
      required this.width,
      required this.backgroundColor,
      required this.borderRadius,
      required this.textStyle, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          // If you want to add a border, you can use Border.all or BorderSide
          // border: Border.all(
          //   color: Colors.black, // Specify border color
          //   width: 2.0, // Specify border width
          // ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
