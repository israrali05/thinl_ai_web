import 'package:flutter/material.dart';
import 'package:project22/utils/app_constants/app_constant.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/my_size/mysize.dart';
import 'package:project22/widget/custom_text/customtext.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../widget/custom_button/custom_button.dart';
import '../../../widget/custom_textfield_label/custom_textfield_label.dart';
import '../../moderator_ideas/components/whole_container_data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(MySize.size15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor),
              ),
              child: Column(
                children: [
                  CustomTextField(
                    label: "Event Name",
                    hintText: "Event Name",
                  ),
                  SizedBox(height: MySize.size5),
                  CustomTextField(
                    label: "Age ",
                    hintText: "Age",
                  ),
                  SizedBox(height: MySize.size5),
                  CustomTextField(
                    label: "Gender",
                    hintText: "Gender",
                  ),
                  SizedBox(height: MySize.size5),
                  CustomTextField(
                    label: "Department",
                    hintText: "Department",
                  ),
                  SizedBox(height: MySize.size5),
                  CustomTextField(
                    label: "Experience",
                    hintText: "Experience",
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  CustomButton(
                    text: 'Entry',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: MySize.size54),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(MySize.size15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor, width: 0.4),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(bottom: MySize.size5),
                    itemBuilder: (context, index) {
                      return CustomText(
                        text:
                            'Q${index + 1}: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been?',
                        style: AppTextStyles.font14To400.copyWith(
                          fontSize: MySize.size16,
                          fontFamily: 'Source Sans Pro',
                        ),
                      );
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return WholeContainerData();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
