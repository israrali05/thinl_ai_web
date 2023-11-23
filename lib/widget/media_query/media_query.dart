import 'package:flutter/material.dart';

class CustomMediaQuery {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }


  static double responsiveWidth(double percentage) {
    return screenWidth * (percentage / 100);
  }


  static double responsiveHeight(double percentage) {
    return screenHeight * (percentage / 100);
  }
}