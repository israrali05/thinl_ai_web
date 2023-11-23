import 'package:flutter/material.dart';
import 'package:project22/screen/master_dashboard/components/chart_component.dart';
import 'package:project22/screen/master_dashboard/components/notification_section.dart';
import 'package:project22/screen/master_dashboard/components/previous_event.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_text_field/textformfield.dart';

import '../../utils/app_colors/colors.dart';
import '../../utils/app_constants/app_constant.dart';
import '../../utils/app_images/app_images.dart';
import 'components/coming_events_container.dart';
import 'components/last_events_graph.dart';

class MasterDashboardView extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: CustomText(
                        text: 'Dashboard',
                        style: AppTextStyles.headingTwo,
                      ),
                    ),
                    Row(
                      children: [
                        DoughnutChartWidget(
                          topText: 'Invitations',
                        ),
                        DoughnutChartWidget(
                          topText: 'Registration',
                        ),
                        DoughnutChartWidget(
                          topText: 'Confirm Attendees',
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomText(
                      text: 'Previous Events',
                      style: AppTextStyles.headingTwo,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        PreviousEvent(
                            imgUrl: AppImages.event2,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                        PreviousEvent(
                            imgUrl: AppImages.event1,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                        PreviousEvent(
                            imgUrl: AppImages.event2,
                            eventName: 'Event Name',
                            eventDetail: AppTexts.eventDetail),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomText(
                      text: 'Coming Up Events',
                      style: AppTextStyles.headingTwo,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ComingEventsContainer(),
                        ComingEventsContainer(),
                        ComingEventsContainer(),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Notifications',
                      color: AppColors.primary,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                    NotificationSection(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: 'Last Events',
                      color: AppColors.primary,
                      fontSize: 26,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                    LastEventsGraph(),
                    SizedBox(height: 10),
                    CustomText(
                      text: 'Last Successful Events',
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
