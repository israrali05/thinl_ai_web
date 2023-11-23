import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class ConatinerBoxParagraphWidget extends StatelessWidget {
  final String paragraphtext;
  final String bottomText;
  const ConatinerBoxParagraphWidget({
    super.key,
    required this.paragraphtext,
    required this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFDEDCDC)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
          text: paragraphtext,
          style: AppTextStyles.hintStyle,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              text: bottomText,
              textAlign: TextAlign.end,
              style: AppTextStyles.hintStyle
                  .copyWith(fontSize: 12, color: AppColors.black),
            )
          ],
        )
      ]),
    );
  }
}
