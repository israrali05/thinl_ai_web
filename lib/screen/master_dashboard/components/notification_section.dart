import 'package:flutter/material.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/utils/my_size/mysize.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../widget/custom_text/customtext.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.grey,
        ),
      ),
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MySize.size35,
                  width: MySize.size35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: Image.asset(AppImages.avatar3),
                ),
                SizedBox(width: MySize.size10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Lorem Ipsum is simly\ndummy text of  printing.',
                      textAlign: TextAlign.left,
                      fontSize: MySize.size14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: MySize.size5),
                    CustomText(
                      text: 'Data:Time.',
                      textAlign: TextAlign.left,
                      fontFamily: 'Source Sans Pro',
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
