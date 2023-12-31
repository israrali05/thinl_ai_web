import 'package:flutter/material.dart';
import 'package:project22/screen/circles_screen/components/table_heading_widget.dart';
import 'package:project22/screen/circles_screen/components/table_row_widget.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

class SimpleCircleScreen extends StatelessWidget {
  const SimpleCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.textWhiteColor,
      appBar: MyAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MySize.size25,
          vertical: MySize.size50,
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Circles",
                      style: AppTextStyles.mainHeadingStyle,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppImages.notificationcircleImage,
                          height: MySize.size25,
                        ),
                        SizedBox(
                          width: MySize.size10,
                        ),
                        CustomText(
                          text: "Notification",
                          style: AppTextStyles.hintStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                    height: MySize.size160,
                    child: StepperScreen(
                      currentStep: 4,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MySize.size10, horizontal: MySize.size5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1, color: AppColors.grey.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  width: double.infinity,
                  child: CustomText(
                    text: "Circle No 1",
                    style: AppTextStyles.headingTwo,
                  ),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                TableHeadingWidget(),
                SizedBox(
                  height: MySize.size20,
                ),
                TableRowWidget(),
              ]),
        ),
      ),
    );
  }
}
