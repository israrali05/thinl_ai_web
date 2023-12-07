import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';

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
    MySize().init(context);
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
          width: MySize.size50,
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
