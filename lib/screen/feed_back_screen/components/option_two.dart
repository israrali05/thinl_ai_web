import 'package:flutter/material.dart';
import 'package:project22/provider/feedback_controller.dart';
import 'package:project22/screen/feed_back_screen/components/custom_checkbox.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:provider/provider.dart';

class OptionTwo extends StatelessWidget {
  const OptionTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Consumer<CheckboxController2>(builder: (context, model, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCheckbox(
                value: model.goodChecked,
                onChanged: (value) {
                  model.setGoodChecked(value ?? false);
                },
              ),
              SizedBox(
                width: MySize.size10,
              ),
              Text('Good', style: AppTextStyles.hintStyle),
            ],
          ),
          Row(
            children: [
              CustomCheckbox(
                value: model.veryGoodChecked,
                onChanged: (value) {
                  model.setVeryGoodChecked(value ?? false);
                },
              ),
              SizedBox(
                width: MySize.size20,
              ),
              Text(
                'Great',
                style: AppTextStyles.hintStyle,
              ),
            ],
          ),
          Row(
            children: [
              CustomCheckbox(
                value: model.excellentChecked,
                onChanged: (value) {
                  model.setExcellentChecked(value ?? false);
                },
              ),
              SizedBox(
                width: MySize.size10,
              ),
              Text('Fun', style: AppTextStyles.hintStyle),
            ],
          ),
        ],
      );
    });
  }
}
