import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';

class RatingStar extends StatelessWidget {
  final String stars;
  final String? lastText;

  final double value;
  const RatingStar({
    super.key,
    required this.stars,
    required this.value,
    this.lastText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            stars,
            style: AppTextStyles.hintStyle,
          ),
        ),
        Expanded(
          child: LinearProgressIndicator(
            color: AppColors.secondary,
            value: value,
            backgroundColor: AppColors.grey.withOpacity(0.3),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: Text(
            lastText ?? "",
            style: AppTextStyles.hintStyle.copyWith(color: AppColors.secondary),
          ),
        ),
      ],
    );
  }
}
