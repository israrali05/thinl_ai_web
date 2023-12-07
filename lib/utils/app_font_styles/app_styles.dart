import 'package:flutter/material.dart';
import 'package:project22/utils/my_size/mysize.dart';
import '../app_colors/colors.dart';

class AppTextStyles {
  static TextStyle drawerTextColor = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: MySize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.textGreyColor,
  );

  ///Button Text Style
  static TextStyle btnStyle = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: MySize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.textGreyColor,
  );

  // heading Style
  static TextStyle mainHeadingStyle = TextStyle(
    color: AppColors.primary,
    fontSize: MySize.size28,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  ///Button Text Style
  static TextStyle hintStyle = TextStyle(
    color: AppColors.black,
    fontSize: MySize.size16,
    fontFamily: 'Source Sans Pro',
    fontWeight: FontWeight.w400,
  );

  static TextStyle headingTwo = TextStyle(
    color: Color(0xFF3871C1),
    fontSize: MySize.size20,
    fontFamily: 'Source Sans Pro',
    fontWeight: FontWeight.w700,
  );

  static TextStyle smallheadingtable = TextStyle(
    color: AppColors.textWhiteColor,
    fontSize: MySize.size20,
    fontFamily: 'Source Sans Pro',
    fontWeight: FontWeight.w600,
  );
  static TextStyle font14To400 = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: MySize.size14,
    fontWeight: FontWeight.w400,
    color: AppColors.textGreyColor,
  );
  static TextStyle font26To600 = TextStyle(
    fontFamily: 'Source Sans Pro',
    fontSize: MySize.size26,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
}
