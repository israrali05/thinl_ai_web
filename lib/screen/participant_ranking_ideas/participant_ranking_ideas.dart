import 'package:flutter/material.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/horizontal_container.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/ranking_ideas_widget.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/icon_container/icon_container.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

import '../../utils/app_colors/colors.dart';
import '../../widget/custom_text/customtext.dart';

class ParticipantRankingIdeas extends StatelessWidget {
  const ParticipantRankingIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MySize.size20, vertical: MySize.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Ranking the Top Ideas",
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(
                  height: MySize.size160,
                  child: StepperScreen(
                    currentStep: 5,
                  )),
              SizedBox(height: MySize.size30),
              CustomText(
                text: 'Ranking the Top Ideas',
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(height: MySize.size25),
              GroupContainer(
                groupNo: "Group No 1",
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MySize.scaleFactorWidth * 120,
                          child: HorizontalContainer(),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(MySize.size10),
                      margin: EdgeInsets.only(right: MySize.size10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.textGreyColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          RankingIdeasWidget(),
                          RankingIdeasWidget(),
                          RankingIdeasWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
