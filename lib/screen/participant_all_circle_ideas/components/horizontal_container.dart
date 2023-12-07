import 'package:flutter/material.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_constants/app_constant.dart';
import '../../../widget/custom_text/customtext.dart';

class IdeaContainer extends StatelessWidget {
  String text;
  double? width;

  IdeaContainer({required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: width,
          margin: EdgeInsets.all(MySize.size10),
          padding: EdgeInsets.all(MySize.size10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffFAFAFA),
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: CustomText(
            text: text,
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            fontFamily: 'Source Sans Pro',
            fontSize: MySize.size14,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: EdgeInsets.all(MySize.size5),
          padding: EdgeInsets.all(MySize.size5),
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
        ),
      ],
    );
  }
}
