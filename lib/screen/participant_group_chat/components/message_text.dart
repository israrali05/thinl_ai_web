import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class MessageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffFAFAFA),
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: AppTexts.customLoremText,
                fontFamily: 'Source Sans Pro',
                style: AppTextStyles.hintStyle,
              ),
              CustomText(
                text: '#542d124212',
                fontFamily: 'Source Sans Pro',
                style: AppTextStyles.hintStyle
                    .copyWith(color: AppColors.secondary),
              ),
            ],
          ),
        );
      },
    );
  }
}
