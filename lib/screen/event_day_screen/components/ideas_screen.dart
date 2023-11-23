import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/provider/event_screen_controller.dart';
import 'package:project22/screen/event_day_screen/components/video_player.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/paragraph_widget_text/paragraph_widget_text.dart';
import 'package:provider/provider.dart';

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
    return ListView(
      children: [
        VideoPlayerWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: CustomText(
            textAlign: TextAlign.start,
            text: "Ideas",
            style: AppTextStyles.headingTwo.copyWith(fontSize: 18),
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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 25,
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
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          margin: EdgeInsets.only(right: 3),
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
                                fontSize: 12,
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 25,
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
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.only(right: 5),
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
                                fontSize: 12,
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 25,
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
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.only(right: 5),
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
                                fontSize: 12,
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
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
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          margin: EdgeInsets.only(right: 5),
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
                                fontSize: 12,
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
      ]),
    );
  }
}
