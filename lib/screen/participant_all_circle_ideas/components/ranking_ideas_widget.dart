import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class RankingIdeasWidget extends StatelessWidget {
  const RankingIdeasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffFAFAFA),
        border: Border.all(
          color: AppColors.secondary,
        ),
      ),
      child: CustomText(
        text: '#542d124212',
        style: AppTextStyles.hintStyle.copyWith(color: AppColors.secondary),
      ),
    );
  }
}
