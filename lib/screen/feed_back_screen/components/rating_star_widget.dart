
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';

class RatingStar extends StatelessWidget {
  final String stars;
  final double value;
  const RatingStar({
    super.key,
    required this.stars,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          stars,
          style: AppTextStyles.hintStyle,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: LinearProgressIndicator(
            color: AppColors.secondary,
            value: value,
            backgroundColor: AppColors.grey.withOpacity(0.3),
          ),
        )
      ],
    );
  }
}
