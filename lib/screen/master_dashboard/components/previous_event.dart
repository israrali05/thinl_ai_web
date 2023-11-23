import 'package:flutter/material.dart';
import 'package:project22/widget/custom_text/customtext.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../utils/app_images/app_images.dart';

class PreviousEvent extends StatelessWidget {
  String imgUrl;
  String eventName;
  String eventDetail;

  PreviousEvent(
      {required this.imgUrl,
      required this.eventName,
      required this.eventDetail});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 118,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
                child: Image(
                  image: AssetImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: eventName,
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  CustomText(
                    text: eventDetail,
                    style: TextStyle(
                      color: AppColors.textGreyColor,
                      fontSize: 13,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
