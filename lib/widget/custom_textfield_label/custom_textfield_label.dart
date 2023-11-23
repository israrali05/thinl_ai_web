import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          style: AppTextStyles.hintStyle.copyWith(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          cursorColor: AppColors.secondary,
          cursorHeight: 15,
          style: AppTextStyles.hintStyle,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.hintStyle
                .copyWith(color: AppColors.grey.withOpacity(0.5)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(5.0), // Set border radius here
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.grey
                      .withOpacity(0.5)), // Change border color here
              borderRadius:
                  BorderRadius.circular(5.0), // Set border radius here
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.primary), // Change border color here
              borderRadius:
                  BorderRadius.circular(5.0), // Set border radius here
            ),
          ),
        ),
      ],
    );
  }
}
