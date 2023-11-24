import 'package:flutter/material.dart';
import 'package:project22/main.dart';
import 'package:project22/provider/feedback_controller.dart';
import 'package:project22/screen/feed_back_screen/components/custom_checkbox.dart';
import 'package:project22/screen/feed_back_screen/components/message_box_widget.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_textfield_label/custom_textfield_label.dart';
import 'package:project22/widget/our_botton/our_botton.dart';
import 'package:provider/provider.dart';

class EventRegistrationScreen extends StatefulWidget {
  const EventRegistrationScreen({super.key});

  @override
  State<EventRegistrationScreen> createState() =>
      _EventRegistrationScreenState();
}

class _EventRegistrationScreenState extends State<EventRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        backgroundColor: AppColors.textWhiteColor,
        appBar: MyAppBar(),
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Event Registration",
                      style: AppTextStyles.mainHeadingStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            label: "First Name",
                            hintText: "First Name",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CustomTextField(
                            label: "Last Name",
                            hintText: "Last Name",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomTextField(
                          label: "Age/Generation",
                          hintText: "Age/Generation",
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: CustomTextField(
                          label: "Gender Identity",
                          hintText: "Gender Identity",
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: CustomTextField(
                          label: "Education Level",
                          hintText: "Education Level",
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomTextField(
                          label: "Department",
                          hintText: "Department",
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: CustomTextField(
                          label: "Working Experience",
                          hintText: "Working Experience",
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: CustomTextField(
                          label: "Status",
                          hintText: "Status",
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Expanded(
                          flex: 2,
                          child: CustomTextField(
                            label: "Intersts",
                            hintText: "Intersts",
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Do you want join this event?",
                              style: AppTextStyles.hintStyle
                                  .copyWith(fontSize: 18),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Consumer<CheckboxController>(
                                    builder: (context, model, child) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomCheckbox(
                                        value: model.goodChecked,
                                        onChanged: (value) {
                                          model.setGoodChecked(value ?? false);
                                        },
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Anonymously',
                                          style: AppTextStyles.hintStyle),
                                    ],
                                  );
                                }),
                                SizedBox(
                                  width: 20,
                                ),
                                Consumer<CheckboxController2>(
                                    builder: (context, model, child) {
                                  return Row(
                                    children: [
                                      CustomCheckbox(
                                        value: model.goodChecked,
                                        onChanged: (value) {
                                          model.setGoodChecked(value ?? false);
                                        },
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Good',
                                          style: AppTextStyles.hintStyle),
                                    ],
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                    CustomText(
                      text: "Share Your Opinions",
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MessageBoxWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Ourbotton(
                            text: "Submit",
                            height: 35,
                            width: 70,
                            backgroundColor: AppColors.primary,
                            borderRadius: 5,
                            textStyle: AppTextStyles.hintStyle
                                .copyWith(color: AppColors.whiteColor))
                      ],
                    ),
                  ]),
            )));
  }
}
