import 'package:flutter/material.dart';
import 'package:project22/screen/event_detail_screen/components/countdown_timer.dart';
import 'package:project22/screen/event_detail_screen/components/notificationContainer.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_media_query/custom_media_qeury.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';
import 'package:project22/widget/stepper_widget.dart/stepper_widget.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 2 / 100,
            vertical: MediaQuery.of(context).size.height * 5 / 100,
          ),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 35),
                    child: CustomTextTwo(
                      text: "Event Details",
                      textStyle: TextStyle(
                        color: AppColors.primary,
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 150,
                      child: StepperScreen(
                        currentStep: 3,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(flex: 2, child: CountdownTimer()),
                      // SizedBox(
                      //   width: CustomMediaQuery.responsiveWidth(20),
                      // ),
                      Expanded(

                          // width: CustomMediaQuery.responsiveWidth(5),
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: notificationContainer(),
                      )),
                    ],
                  ),
                ]),
          ),
        ));
  }
}
