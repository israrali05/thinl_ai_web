import 'package:flutter/material.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_constants/app_constant.dart';
import '../../../utils/app_font_styles/app_styles.dart';
import '../../../widget/custom_text/customtext.dart';
import 'inner_container.dart';

class WholeContainerData extends StatelessWidget {
  const WholeContainerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor, width: 0.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomText(
            text: AppTexts.customLoremText,
            style: AppTextStyles.font14To400.copyWith(
              fontFamily: 'Urbanist',
            ),
          ),
          InnerContainer(text: '#542d124212'),
        ],
      ),
    );
  }
}
