import 'package:flutter/material.dart';

import '../../../utils/app_colors/colors.dart';
import '../../../widget/custom_button/custom_button.dart';
import '../../../widget/custom_textfield_label/custom_textfield_label.dart';
import '../../moderator_ideas/components/whole_container_data.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15),
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
                  SizedBox(height: 5),
                  CustomTextField(
                    label: "Age ",
                    hintText: "Age",
                  ),
                  SizedBox(height: 5),
                  CustomTextField(
                    label: "Gender",
                    hintText: "Gender",
                  ),
                  SizedBox(height: 5),
                  CustomTextField(
                    label: "Department",
                    hintText: "Department",
                  ),
                  SizedBox(height: 5),
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
          SizedBox(width: 5),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor, width: 0.4),
              ),
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return WholeContainerData();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
