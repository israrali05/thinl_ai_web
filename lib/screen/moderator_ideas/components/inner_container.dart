import 'package:flutter/material.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_font_styles/app_styles.dart';
import '../../../widget/custom_text/customtext.dart';

class InnerContainer extends StatelessWidget {
  String text;
  InnerContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.secondary, width: 0.4),
      ),
      child: CustomText(
        text: text,
        style: AppTextStyles.font14To400.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.secondary,
        ),
      ),
    );
  }
}
