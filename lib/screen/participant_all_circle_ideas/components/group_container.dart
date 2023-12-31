import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class GroupContainer extends StatelessWidget {
  String groupNo;

  GroupContainer({required this.groupNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(MySize.size5),
      margin: EdgeInsets.all(MySize.size8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size8),
        border: Border.all(
          color: AppColors.borderColor.withOpacity(0.6),
        ),
      ),
      child: CustomText(
        text: groupNo,
        fontWeight: FontWeight.w700,
        style: AppTextStyles.headingTwo,
      ),
    );
  }
}
