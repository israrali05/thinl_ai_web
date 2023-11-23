import 'package:flutter/material.dart';
import 'package:project22/screen/event_detail_screen/components/circular_progress_bar.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: CustomTextTwo(
            text: "Countdown Timer",
            textStyle: TextStyle(
              color: AppColors.primary,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: CircularProgressBar(
                progress1: 0.2,
                botomtext: "Days",
                centertext: "04",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: CircularProgressBar(
                progress1: 0.6,
                botomtext: "Hours",
                centertext: "04",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: CircularProgressBar(
                progress1: 0.3,
                botomtext: "Minutes",
                centertext: "04",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: CircularProgressBar(
                progress1: 0.9,
                botomtext: "Seconds",
                centertext: "04",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: CustomTextTwo(
            text: AppTexts.generate_events_template_text1,
            textStyle: AppTextStyles.hintStyle,
          ),
        )
      ],
    );
  }
}
