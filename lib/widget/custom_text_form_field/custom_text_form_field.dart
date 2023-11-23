import 'package:flutter/material.dart';

import '../../utils/app_colors/colors.dart';
import '../../utils/app_font_styles/app_styles.dart';
// import 'package:think_ai/utils/app_colors/app_colors.dart';
// import 'package:think_ai/utils/app_text_styles/text_styles.dart';

class CustomTextField extends StatefulWidget {
  String hintText;
  TextEditingController controller;
  Widget? sIcon;
  Widget? pIcon;
  bool obscureText;
  String? Function(String?)? validator;
  TextInputType? keyboardType;

  CustomTextField({
    this.pIcon,
    required this.controller,
    required this.hintText,
    // required this.labelText,
    this.keyboardType,
    this.sIcon,
    this.obscureText = false,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        fillColor: AppColors.textWhiteColor,
        filled: true,
        isCollapsed: true,
        prefixIcon: widget.pIcon,
        contentPadding: EdgeInsets.only(top: 12,bottom: 12,left: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.textGreyColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AppColors.textGreyColor,
            )),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xFF666666),
          fontSize: 16,
          fontFamily: 'Source Sans Pro',
          fontWeight: FontWeight.w400,
          // height: 0.07,
        ),
        suffixIcon: widget.sIcon,
      ),
      validator: widget.validator,
    );
  }
}