import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_button/custom_button.dart';
import 'package:project22/widget/custom_media_query/custom_media_qeury.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';

class InvitationScreen extends StatefulWidget {
  const InvitationScreen({super.key});

  @override
  State<InvitationScreen> createState() => _InvitationScreenState();
}

class _InvitationScreenState extends State<InvitationScreen> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: const MyAppBar(),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: CustomMediaQuery.responsiveWidth(2),
              vertical: CustomMediaQuery.responsiveHeight(5)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.size25),
                  child: CustomTextTwo(
                    text: "Invitation",
                    textStyle: TextStyle(
                      color: AppColors.primary,
                      fontSize: MySize.size28,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: CustomMediaQuery.responsiveWidth(5),
                      vertical: CustomMediaQuery.responsiveHeight(10)),
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextTwo(
                        text: "Moderator Email Address",
                        textStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: MySize.size18,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(1),
                      ),
                      CustomTextTwo(
                        text: "Dear Saima Gill,",
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: MySize.size16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(1),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/png/think.png",
                            height: MySize.size30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(2),
                      ),
                      CustomTextTwo(
                        text: AppTexts.generate_events_template_text1,
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: MySize.size16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: MySize.size20,
                      ),
                      CustomTextTwo(
                        text: AppTexts.invitationScreentext,
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: MySize.size16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(8),
                      ),
                      CustomTextTwo(
                        text: "Sincerely,",
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: MySize.size16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(2),
                      ),
                      CustomTextTwo(
                        text: "Name",
                        textStyle: TextStyle(
                          color: const Color.fromRGBO(102, 102, 102, 1),
                          fontSize: MySize.size18,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: CustomMediaQuery.responsiveHeight(0.5),
                      ),
                      CustomTextTwo(
                        text: "Department",
                        textStyle: TextStyle(
                          color: AppColors.black,
                          fontSize: MySize.size16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: CustomMediaQuery.responsiveHeight(3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        height: MySize.size50,
                        width: MySize.size160,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MySize.size18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: AppColors.primary,
                        text: "Accept",
                        onPressed: () {}),
                    SizedBox(
                      width: MySize.size18,
                    ),
                    CustomButton(
                        height: MySize.size50,
                        width: MySize.size160,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: MySize.size18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                        backgroundColor: AppColors.whiteColor,
                        text: "Reject",
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
