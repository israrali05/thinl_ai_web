import 'package:flutter/material.dart';
import 'package:project22/provider/event_screen_controller.dart';
import 'package:project22/screen/event_day_screen/components/dafault_container.dart';
import 'package:project22/screen/event_day_screen/components/ideas_screen.dart';
import 'package:project22/screen/event_day_screen/components/presentation_screen.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';
import 'package:provider/provider.dart';

class EventDayScreen extends StatelessWidget {
  const EventDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonTitles = [
      'Presentation Screen',
      'Ideas',
    ];

    List<Widget> screenContents = [
      PresentationScreen(),
      IdeasScreenWidget(),
    ];
    return Scaffold(
      backgroundColor: AppColors.textWhiteColor,
      appBar: MyAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 50,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "Event Day",
                style: AppTextStyles.mainHeadingStyle,
              ),
              SizedBox(
                  height: 120,
                  child: StepperScreen(
                    currentStep: 6,
                  )),
              Consumer<EventScreenProvider>(
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
                                  selectedIndexProvider.selectedIndex = -1;
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
                      SizedBox(height: 15),
                      Expanded(
                        child: selectedIndexProvider.selectedIndex == -1
                            ? DafaultContainerWidget()
                            : screenContents[
                                selectedIndexProvider.selectedIndex],
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
