import 'package:flutter/material.dart';
import 'package:project22/main.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';
import '../../utils/app_colors/colors.dart';
import '../../utils/app_constants/app_constant.dart';
import '../../widget/custom_text/customtext.dart';
import 'components/group_container.dart';
import 'components/horizontal_container.dart';

class ParticipantAllCircleIdeas extends StatelessWidget {
  const ParticipantAllCircleIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CustomText(
                text: 'All Circle’s Top Ideas',
                style: AppTextStyles.mainHeadingStyle,
              ),
              // SizedBox(
              //     height: 120,
              //     child: StepperScreen(
              //       currentStep: 5,
              //     )),
              SizedBox(height: 20),
              ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GroupContainer(groupNo: 'Group No ' + index.toString()),
                        IdeaContainer(
                          text: AppTexts.customLoremText,
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
