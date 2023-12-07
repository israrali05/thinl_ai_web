import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_button/custom_button.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class CirclesCreateScreen extends StatelessWidget {
  const CirclesCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: AppColors.textWhiteColor,
      body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MySize.size25,
            vertical: MySize.size50,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Circle Detail ",
                  style: AppTextStyles.mainHeadingStyle,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: MySize.size35, horizontal: MySize.size20),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF9F9F9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: CustomText(
                    text: AppTexts.generate_events_template_text1,
                    style: AppTextStyles.hintStyle.copyWith(fontSize: MySize.size18),
                  ),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        height: MySize.size40,
                        width: MySize.size140,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: MySize.size18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: AppColors.whiteColor,
                        text: "#4y58",
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
