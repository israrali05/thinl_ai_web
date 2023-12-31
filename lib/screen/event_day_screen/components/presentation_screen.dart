import 'package:flutter/material.dart';
import 'package:project22/screen/event_day_screen/components/video_player.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return ListView(physics: BouncingScrollPhysics(), children: [
      SizedBox(height: MySize.size200, width: MySize.size200, child: VideoPlayerWidget()),
      Padding(
        padding: EdgeInsets.symmetric(vertical: MySize.size10),
        child: CustomText(
          text: "Comments",
          textAlign: TextAlign.start,
          style: AppTextStyles.headingTwo.copyWith(fontSize: MySize.size18),
        ),
      ),
      Commets(),
      SizedBox(
        height: MySize.size10,
      ),
      SizedBox(
        height: MySize.size35,
        child: TextField(
          style: AppTextStyles.hintStyle,
          cursorHeight: MySize.size20,
          cursorWidth: 1,
          cursorColor: AppColors.primary,
          decoration: InputDecoration(
            hintText: 'Enter Your Commects',
            hintStyle: AppTextStyles.btnStyle
                .copyWith(color: AppColors.textGreyColor.withOpacity(0.5)),
            contentPadding: EdgeInsets.only(left: MySize.size10),
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                AppImages.eventDaymessage,
                height: MySize.size10,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: AppColors.primary.withOpacity(0.5)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: AppColors.black.withOpacity(0.1)),
            ),
          ),
        ),
      )
    ]);
  }
}

class Commets extends StatelessWidget {
  const Commets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MySize.size300,
        // padding: EdgeInsets.all(5.r),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(5.r),
        //     border: Border.all(color: AppColors.borderColor, width: 1)),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  textAlign: TextAlign.justify,
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle,
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                CustomText(
                  textAlign: TextAlign.justify,
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle,
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                CustomText(
                  textAlign: TextAlign.justify,
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle,
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                CustomText(
                  textAlign: TextAlign.justify,
                  text: AppTexts.shortname,
                  style: AppTextStyles.hintStyle,
                ),
                SizedBox(
                  height: MySize.size10,
                ),
              ],
            );
          },
        ));
  }
}
