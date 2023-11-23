import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_images/app_images.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool? newValue = !value;
        onChanged?.call(newValue);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            border: Border.all(
              color: value
                  ? AppColors.secondary
                  : AppColors.grey.withOpacity(0.3),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(5.0),
            color: AppColors.whiteColor),
        child: value
            ? Image.asset(
                AppImages.feedBacktickpng,
              )
            : null,
      ),
    );
  }
}
