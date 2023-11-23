import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/widget/custom_text_2/custom_text_2.dart';

class TextfiledWidgetGenerateTemplate extends StatelessWidget {
  final String textlabel;
  final String texthint;
  const TextfiledWidgetGenerateTemplate({
    super.key,
    required this.textlabel,
    required this.texthint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomTextTwo(
              text: textlabel,
              textStyle: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )),
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: texthint,
              hintStyle: TextStyle(
                color: AppColors.grey,
                fontSize: 14,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
