import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class EventTopIdea extends StatelessWidget {
  const EventTopIdea({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.textWhiteColor,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySize.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Top of the idea",
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(height: MySize.size30),
              GroupContainer(groupNo: 'Group No 8'),
              SizedBox(height: MySize.size20),
              IdeaContainer(text: AppTexts.customLoremText),
            ],
          ),
        ),
      ),
    );
  }
}
