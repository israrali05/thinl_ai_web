import 'package:flutter/material.dart';
import 'package:project22/main.dart';
import 'package:project22/screen/participant_all_circle_ideas/components/group_container.dart';
import 'package:project22/screen/participant_top_fice_steps/component/reting_step.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/icon_container/icon_container.dart';
import '../../utils/app_colors/colors.dart';

class TopFiveSteps extends StatelessWidget {
  const TopFiveSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CustomText(
                text: 'Top 5 Steps',
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GroupContainer(
                                groupNo: 'Step No ' + index.toString()),
                            SizedBox(height: 10),
                            HorizontalContainer(),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        RatingStep(
                            text1: 'step no 1', text2: '04', onTap: () {}),
                        RatingStep(
                            text1: 'step no 1', text2: '04', onTap: () {}),
                        RatingStep(
                            text1: 'step no 1', text2: '04', onTap: () {}),
                      ],
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
