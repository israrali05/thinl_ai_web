import 'package:flutter/material.dart';
import 'package:project22/screen/event_day_screen/components/video_player.dart';
import 'package:project22/screen/feed_back_screen/components/rating_star_widget.dart';
import 'package:project22/screen/master_dashboard/components/last_events_graph.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/custom_textfield_label/custom_textfield_label.dart';
import 'package:project22/widget/media_query/media_query.dart';
import 'package:video_player/video_player.dart';

class ModeratorBenchMarkScreen extends StatelessWidget {
  const ModeratorBenchMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(MySize.size25),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomText(
              text: "Benchmarks",
              style: AppTextStyles.mainHeadingStyle,
            ),
            SizedBox(height: MySize.size30),
            Row(
              children: [
                Expanded(
                    child: CustomTextField(
                  hintText: "Event Name",
                  label: "Event Name",
                )),
                SizedBox(
                  width: MySize.size20,
                ),
                Expanded(
                    child: CustomTextField(
                  hintText: "Event Date",
                  label: "Event Date",
                )),
              ],
            ),
            SizedBox(
              height: MySize.size20,
            ),
            CustomTextField(
              hintText: "Event Location",
              label: "California, United States",
            ),
            SizedBox(
              height: MySize.size20,
            ),
            CustomText(
              text: "Event Description",
              style: AppTextStyles.headingTwo,
            ),
            SizedBox(
              height: MySize.size20,
            ),
            Container(
              padding: EdgeInsets.all(MySize.size20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: CustomText(
                text: AppTexts.generate_events_template_text1,
                style: AppTextStyles.hintStyle,
              ),
            ),
            SizedBox(
              height: MySize.size20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: MySize.size200,
                    // width: 200,
                    child: VideoPlayerWidget(),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 20 / 100,
                ),
                Expanded(
                    child: SizedBox(height: 200, child: LastEventsGraph())),
              ],
            ),
            SizedBox(
              height: MySize.size40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 30 / 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Successful Benchmarks",
                    style: AppTextStyles.headingTwo,
                  ),
                  SizedBox(
                    height: MySize.size20,
                  ),
                  RatingStar(
                    stars: "Target",
                    value: 0.1,
                    lastText: "50",
                  ),
                  RatingStar(
                    stars: "Attendees",
                    value: 0.3,
                    lastText: "200",
                  ),
                  RatingStar(
                    stars: "Successful Event",
                    value: 0.5,
                    lastText: "400",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
