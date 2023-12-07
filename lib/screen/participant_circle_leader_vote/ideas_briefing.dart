import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

import '../../utils/app_colors/colors.dart';
import '../../widget/custom_text/customtext.dart';

class IdeasBriefing extends StatelessWidget {
  const IdeasBriefing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.size25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MySize.size30),
              CustomText(
                text: 'Circle Leader Vote',
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(
                  height: MySize.size160,
                  child: StepperScreen(
                    currentStep: 5,
                  )),
              SizedBox(height: MySize.size10),
              GroupContainer(groupNo: 'Group No 1'),
              IdeaContainer(text: AppTexts.customLoremText),
              SizedBox(height: MySize.size30),
              GroupContainer(groupNo: 'Circle Leader Briefing'),
              IdeaContainer(text: AppTexts.customLoremText),
            ],
          ),
        ),
      ),
    );
  }
}
