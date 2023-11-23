import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_button/custom_button.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

import '../../utils/app_constants/app_constant.dart';

class ParticipantAiAssistant extends StatelessWidget {
  TextEditingController _promtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Ai Assistant',
              style: AppTextStyles.mainHeadingStyle,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              child: CustomTextFormField(
                                maxLines: 13,
                                hintText: 'Enter Your Promt',
                                controller: _promtController,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: CustomButton(
                                text: 'Generate',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFAFAFA),
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                          ),
                          child: CustomText(
                            text: AppTexts.customLoremText,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
