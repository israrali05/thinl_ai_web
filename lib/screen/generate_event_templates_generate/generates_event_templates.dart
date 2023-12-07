import 'package:flutter/material.dart';
import 'package:project22/screen/generate_event_templates_generate/components/textfiled_widget.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_button/custom_button.dart';
import 'package:project22/widget/custom_media_query/custom_media_qeury.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';

class GeneratesEventTemplates extends StatelessWidget {
  const GeneratesEventTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    CustomMediaQuery.init(context);
    MySize().init(context);
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: CustomMediaQuery.responsiveWidth(2),
            vertical: CustomMediaQuery.responsiveHeight(5)),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomTextTwo(
              text: "Generate Event Template",
              // textAlign: TextAlign.left,
              textStyle: TextStyle(
                color: AppColors.primary,
                fontSize: MySize.size28,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
              //  : AppTextStyles.mainHeadingStyle,
            ),
            SizedBox(
              height: MySize.size30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(MySize.size25),
                  width: CustomMediaQuery.responsiveWidth(25),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Event Name",
                          textlabel: "Event Name",
                        ),
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Date",
                          textlabel: "Date",
                        ),
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Time",
                          textlabel: "Time",
                        ),
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Language",
                          textlabel: "Language",
                        ),
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Max Result Length",
                          textlabel: "Max Result Length",
                        ),
                        TextfiledWidgetGenerateTemplate(
                          texthint: "Tone of Vote",
                          textlabel: "Tone of Vote",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                          onPressed: () {},
                          text: "Generate",
                          backgroundColor: AppColors.primary,
                          height: MySize.size50,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MySize.size16,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                          width: double.infinity,
                        ),
                      ]),
                ),
                SizedBox(
                  width: MySize.size20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: MySize.size30, horizontal: MySize.size40),
                  width: CustomMediaQuery.responsiveWidth(48),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(children: [
                    CustomTextTwo(
                      text: AppTexts.generate_events_template_text1,
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: MySize.size16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        // height: 0.08,
                      ),
                    ),
                    SizedBox(
                      height: MySize.size22,
                    ),
                    CustomTextTwo(
                      text: AppTexts.generate_events_template_text1,
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: MySize.size16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        // height: 0.08,
                      ),
                    ),
                    SizedBox(
                      height: MySize.size22,
                    ),
                    CustomTextTwo(
                      text: AppTexts.generate_events_template_text1,
                      textStyle: TextStyle(
                        color: AppColors.black,
                        fontSize: MySize.size16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        // height: 0.08,
                      ),
                    ),
                    SizedBox(
                      height: MySize.size80,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: MySize.size20),
                        suffixIcon: Padding(
                          padding:  EdgeInsets.all(MySize.size8),
                          child: Image.asset(
                            "assets/images/png/event_day_message_sent.png",
                            height: MySize.size10,
                          ),
                        ),
                        hintText: "Enter Your Meaage",
                        hintStyle: TextStyle(
                          color: AppColors.grey,
                          fontSize: MySize.size14,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              BorderSide(color: AppColors.primary, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
