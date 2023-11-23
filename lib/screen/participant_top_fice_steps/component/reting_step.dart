import 'package:flutter/material.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../widget/custom_text/customtext.dart';

class RatingStep extends StatefulWidget {
  VoidCallback onTap;
  String text1;
  String text2;

  RatingStep({required this.text1, required this.text2, required this.onTap});

  @override
  State<RatingStep> createState() => _RatingStepState();
}

class _RatingStepState extends State<RatingStep> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected != isSelected;
        });
        widget.onTap;
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.16,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.blue
              : Colors
                  .transparent, // Change background color based on selection
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.secondary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: 'Step No 3'),
            CustomText(text: '04'),
          ],
        ),
      ),
    );
  }
}
