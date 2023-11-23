import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_button/custom_button.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

class AiGenerateIdeas extends StatelessWidget {
  const AiGenerateIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: AppColors.textWhiteColor,
      body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 50,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomText(
                    text: "AI Generated Ideas",
                    style: AppTextStyles.mainHeadingStyle,
                  ),
                ),
                // SizedBox(
                //     height: 120,
                //     child: StepperScreen(
                //       currentStep: 4,
                //     )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF9F9F9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: CustomText(
                    text: AppTexts.generate_events_template_text1,
                    style: AppTextStyles.hintStyle.copyWith(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        height: 40,
                        width: 150,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: AppColors.whiteColor,
                        text: "#473458",
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
