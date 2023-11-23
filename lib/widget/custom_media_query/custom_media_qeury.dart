import 'package:flutter/material.dart';

class CustomMediaQuery {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
  }

  static double responsiveWidth(double percentage) {
    return screenWidth * (percentage / 100);
  }

  static double responsiveHeight(double percentage) {
    return screenHeight * (percentage / 100);
  }
}
