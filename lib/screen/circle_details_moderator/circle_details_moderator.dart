import 'package:flutter/material.dart';
import 'package:project22/provider/moderator_benchmark_controller.dart/moderator_bechmark.dart';
import 'package:project22/screen/circle_details_moderator/components/circle_container.dart';
import 'package:project22/screen/circle_details_moderator/components/file_container.dart';
import 'package:project22/screen/circle_details_moderator/components/member_container.dart';
import 'package:project22/screen/circle_details_moderator/components/overview_container.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:provider/provider.dart';

class CircleDetailsModerator extends StatelessWidget {
  const CircleDetailsModerator({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = ['Overview', 'Members', 'Cirlce', 'Files'];

    List<Widget> screenContents = [
      OverviewConatiner(),
      MemberContainer(),
      CircleContainer(),
      FileContainer(),
    ];
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.textWhiteColor,
      appBar: MyAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MySize.size25,
          vertical: MySize.size50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "Circle Detail",
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Consumer<ModeratorControllers>(
                  builder: (context, selectedIndexProvider, child) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: buttonTitles.length,
                          itemBuilder: (context, int index) {
                            return GestureDetector(
                              onTap: () {
                                if (selectedIndexProvider.selectedIndex ==
                                    index) {
                                  selectedIndexProvider.selectedIndex = 0;
                                } else {
                                  selectedIndexProvider.selectedIndex = index;
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(right: 20),
                                decoration: ShapeDecoration(
                                  color: selectedIndexProvider.selectedIndex ==
                                          index
                                      ? AppColors.primary
                                      : AppColors.whiteColor,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1,
                                        color: selectedIndexProvider
                                                    .selectedIndex ==
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
                                      fontSize: 13,
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                      color:
                                          selectedIndexProvider.selectedIndex ==
                                                  index
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
                      SizedBox(height: MySize.size15),
                      Expanded(
                        child:
                            screenContents[selectedIndexProvider.selectedIndex],
                      ),
                    ],
                  ),
                );
              }),
            ]),
      ),
    );
  }
}
