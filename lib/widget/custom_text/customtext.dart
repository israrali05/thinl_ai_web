import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  Color? color;
  TextStyle? style;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final double letterSpacing;

  String? fontFamily;
  TextOverflow? overflow;
  int? maxLines;
  bool? softWrap;

  CustomText({
    Key? key,
    this.style,
    required this.text,
    this.fontSize,
    this.letterSpacing = 1,
    this.overflow,
    this.maxLines,
    this.softWrap,
    this.fontFamily,
    this.color,
    this.fontWeight,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: style,

      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      // style: TextStyle(
      //   fontSize: fontSize,
      //   fontWeight: fontWeight,
      //   letterSpacing: letterSpacing,
      //   fontFamily: fontFamily,
      //   color: color,
      // ),
      textAlign: textAlign,
    );
  }
}
