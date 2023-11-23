import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project22/main.dart';
import 'package:project22/screen/feed_back_screen/components/message_box_widget.dart';
import 'package:project22/screen/feed_back_screen/components/option_one.dart';
import 'package:project22/screen/feed_back_screen/components/option_two.dart';
import 'package:project22/screen/feed_back_screen/components/rating_star_widget.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/app_bar/appbar.dart';
import 'package:project22/widget/custom_text/customtext.dart';
import 'package:project22/widget/our_botton/our_botton.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(25),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: CustomText(
                        text: 'FeedBack Forms',
                        style: AppTextStyles.mainHeadingStyle,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppTexts.customLoremText,
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OptionOne(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppTexts.customLoremText,
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OptionTwo(),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      AppTexts.customLoremText,
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      // glowColor: AppColors.greyParagraphColor,
                      unratedColor: AppColors.black.withOpacity(0.1),
                      glowColor: Colors.yellow,
                      allowHalfRating: true,
                      itemSize: 28,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        size: 5,
                        color: Colors.yellow,
                      ),
                      onRatingUpdate: (rating) {
                        // print(rating);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: AppTexts.generate_events_template_text1,
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 50 / 100,
                      child: Column(
                        children: [
                          RatingStar(
                            stars: "5 Stars",
                            value: 0.1,
                          ),
                          RatingStar(
                            stars: "4 Stars",
                            value: 0.3,
                          ),
                          RatingStar(
                            stars: "3 Stars",
                            value: 0.5,
                          ),
                          RatingStar(
                            stars: "2 Stars",
                            value: 0.7,
                          ),
                          RatingStar(
                            stars: "1 Stars",
                            value: 8,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomText(
                      text: "Share Your Opinions",
                      style: AppTextStyles.hintStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MessageBoxWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Ourbotton(
                            text: "Submit",
                            height: 35,
                            width: 70,
                            backgroundColor: AppColors.primary,
                            borderRadius: 5,
                            textStyle: AppTextStyles.hintStyle
                                .copyWith(color: AppColors.whiteColor))
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "User Code",
                    style: AppTextStyles.hintStyle
                        .copyWith(color: AppColors.secondary),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white, // Filled color
                      border: Border.all(
                        color: AppColors.secondary, // Border color
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                      ),
                      style: TextStyle(color: Colors.black), // Text color
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
