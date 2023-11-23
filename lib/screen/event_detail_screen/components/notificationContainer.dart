import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class notificationContainer extends StatelessWidget {
  const notificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Notification",
          style: AppTextStyles.mainHeadingStyle.copyWith(fontSize: 20),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: ShapeDecoration(
            color: AppColors.textWhiteColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.profile),
              ),
              title: CustomText(
                  text: AppTexts.text1,
                  style: AppTextStyles.hintStyle.copyWith(fontSize: 13)),
              subtitle: CustomText(
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle
                      .copyWith(fontSize: 11, color: AppColors.primary)),
            ),
          ]),
        )
      ],
    );
  }
}
