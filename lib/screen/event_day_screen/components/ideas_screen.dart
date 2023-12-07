import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/provider/event_screen_controller.dart';
import 'package:project22/screen/event_day_screen/components/video_player.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/paragraph_widget_text/paragraph_widget_text.dart';
import 'package:provider/provider.dart';
import '../../../widget/our_botton/our_botton.dart';
import '../../feed_back_screen/components/message_box_widget.dart';

class IdeasScreenWidget extends StatelessWidget {
  const IdeasScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = [
      'Revert',
      'Improve',
      'Enchance',
    ];
    MySize().init(context);
    return ListView(
      children: [
        VideoPlayerWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: MySize.size25),
          child: CustomText(
            textAlign: TextAlign.start,
            text: "Ideas",
            style: AppTextStyles.headingTwo.copyWith(fontSize: MySize.size18),
          ),
        ),
        IdeasWidget(buttonTitles: buttonTitles)
      ],
    );
  }
}

class IdeasWidget extends StatelessWidget {
  const IdeasWidget({
    super.key,
    required this.buttonTitles,
  });

  final List<String> buttonTitles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: MySize.size10, horizontal: MySize.size15),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFF9F9F9)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ConatinerBoxParagraphWidget(
          bottomText: "Saima (#542d124)",
          paragraphtext: AppTexts.shortname,
        ),
        Consumer<IdeasControllers>(
            builder: (context, selectedIndexProvider, child) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: MySize.size10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MySize.size25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: buttonTitles.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          selectedIndexProvider.selectedIndex = index;
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: MySize.size2),
                          margin: EdgeInsets.only(right: MySize.size3),
                          decoration: ShapeDecoration(
                            color: selectedIndexProvider.selectedIndex == index
                                ? AppColors.primary
                                : AppColors.whiteColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: selectedIndexProvider.selectedIndex ==
                                          index
                                      ? AppColors.primary
                                      : AppColors.grey.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              buttonTitles[index],
                              style: TextStyle(
                                fontSize: MySize.size12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                                color:
                                    selectedIndexProvider.selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        ConatinerBoxParagraphWidget(
          bottomText: "Saima (#542d124)",
          paragraphtext: AppTexts.shortname,
        ),
        Consumer<IdeasControllers>(
            builder: (context, selectedIndexProvider, child) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: MySize.size10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MySize.size25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: buttonTitles.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          selectedIndexProvider.selectedIndex = index;
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: MySize.size5),
                          margin: EdgeInsets.only(right: MySize.size5),
                          decoration: ShapeDecoration(
                            color: selectedIndexProvider.selectedIndex == index
                                ? AppColors.primary
                                : AppColors.whiteColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: selectedIndexProvider.selectedIndex ==
                                          index
                                      ? AppColors.primary
                                      : AppColors.grey.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              buttonTitles[index],
                              style: TextStyle(
                                fontSize: MySize.size12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                                color:
                                    selectedIndexProvider.selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        ConatinerBoxParagraphWidget(
          bottomText: "Saima (#542d124)",
          paragraphtext: AppTexts.shortname,
        ),
        Consumer<IdeasControllers>(
            builder: (context, selectedIndexProvider, child) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: MySize.size10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MySize.size25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: buttonTitles.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          selectedIndexProvider.selectedIndex = index;
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: MySize.size5),
                          margin: EdgeInsets.only(right: MySize.size5),
                          decoration: ShapeDecoration(
                            color: selectedIndexProvider.selectedIndex == index
                                ? AppColors.primary
                                : AppColors.whiteColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: selectedIndexProvider.selectedIndex ==
                                          index
                                      ? AppColors.primary
                                      : AppColors.grey.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              buttonTitles[index],
                              style: TextStyle(
                                fontSize: MySize.size12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                                color:
                                    selectedIndexProvider.selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        ConatinerBoxParagraphWidget(
          bottomText: "Saima (#542d124)",
          paragraphtext: AppTexts.shortname,
        ),
        Consumer<IdeasControllers>(
            builder: (context, selectedIndexProvider, child) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: MySize.size10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MySize.size25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: buttonTitles.length,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: () {
                          selectedIndexProvider.selectedIndex = index;
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: MySize.size54),
                          margin: EdgeInsets.only(right: MySize.size5),
                          decoration: ShapeDecoration(
                            color: selectedIndexProvider.selectedIndex == index
                                ? AppColors.primary
                                : AppColors.whiteColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1,
                                  color: selectedIndexProvider.selectedIndex ==
                                          index
                                      ? AppColors.primary
                                      : AppColors.grey.withOpacity(0.2)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              buttonTitles[index],
                              style: TextStyle(
                                fontSize: MySize.size12,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                                color:
                                    selectedIndexProvider.selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        CustomText(
          text: "Share Your Opinions",
          style: AppTextStyles.hintStyle,
        ),
        SizedBox(
          height: MySize.size20,
        ),
        SizedBox(height: MySize.size20),
        MessageBoxWidget(),
        SizedBox(
          height: MySize.size20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Ourbotton(
                text: "Submit",
                height: MySize.size35,
                width: MySize.size60,
                backgroundColor: AppColors.primary,
                borderRadius: 5,
                textStyle: AppTextStyles.hintStyle
                    .copyWith(color: AppColors.whiteColor))
          ],
        ),
      ]),
    );
  }
}
