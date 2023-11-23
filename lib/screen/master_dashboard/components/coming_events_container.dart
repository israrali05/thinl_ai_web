import 'package:flutter/material.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../../../widget/custom_text/customtext.dart';

class ComingEventsContainer extends StatelessWidget {
  // String imgUrl;
  // String eventName;
  // String eventDetail;
  //
  // ComingEventsContainer(
  //     {required this.eventName,
  //     required this.eventDetail,
  //     required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.17,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Events Name',
            style: TextStyle(color: AppColors.secondary),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            style: TextStyle(
              color: AppColors.textGreyColor,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: 'Date: Time',
            color: AppColors.primary,
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 13,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 18,
                  child: Image.asset(AppImages.avatar1),
                ),
                Positioned(
                  left: 30,
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(AppImages.avatar4),
                  ),
                ),
                Positioned(
                  left: 60,
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(AppImages.avatar3),
                  ),
                ),
                Positioned(
                  left: 100,
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset(AppImages.avatar4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
