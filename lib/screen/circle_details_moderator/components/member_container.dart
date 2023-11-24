import 'package:flutter/material.dart';
import 'package:project22/model/detail_cirecle_model.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/widget/custom_text/customtext.dart';

class MemberContainer extends StatelessWidget {
  const MemberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(16), // Example padding
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5), // Sets border radius to 15
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.5), // Border color
                    width: 1, // Border width
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Confirmed Participants",
                        style: AppTextStyles.headingTwo,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 80 / 100,
                        child: ListView.builder(
                            itemCount: 1, // Just one item for the DataTable
                            itemBuilder: (BuildContext context, index) {
                              return DataTable(
                                columns: [
                                  DataColumn(
                                      label: Text(
                                    '#',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Name',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                  DataColumn(
                                      label: Text('Gender',
                                          style: AppTextStyles.hintStyle
                                              .copyWith(
                                                  color: AppColors.primary,
                                                  fontSize: 18))),
                                  DataColumn(
                                      label: Text(
                                    'User Code',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                ],
                                rows: List<DataRow>.generate(
                                  participants.length,
                                  (int index) {
                                    return DataRow(
                                      cells: [
                                        DataCell(Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              margin: EdgeInsets.all(8),
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                // borderRadius: BorderRadius.circular(
                                                //     5), // Sets border radius to 15
                                                border: Border.all(
                                                  color: AppColors.grey,
                                                  // Border color
                                                  width: 1, // Border width
                                                ),
                                              ),
                                            ),
                                            Text("0${index}"),
                                          ],
                                        )),
                                        DataCell(
                                            Text(participants[index].name)),
                                        DataCell(
                                            Text(participants[index].gender)),
                                        DataCell(
                                            Text(participants[index].userCode)),
                                      ],
                                    );
                                  },
                                ),
                              );
                            }),
                      )
                    ]),
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 2 / 100,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(16), // Example padding
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5), // Sets border radius to 15
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.5), // Border color
                    width: 1, // Border width
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Pending Participants",
                        style: AppTextStyles.headingTwo,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 80 / 100,
                        child: ListView.builder(
                            itemCount: 1, // Just one item for the DataTable
                            itemBuilder: (BuildContext context, index) {
                              return DataTable(
                                columns: [
                                  DataColumn(
                                      label: Text(
                                    '#',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Name',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                  DataColumn(
                                      label: Text('Gender',
                                          style: AppTextStyles.hintStyle
                                              .copyWith(
                                                  color: AppColors.primary,
                                                  fontSize: 18))),
                                ],
                                rows: List<DataRow>.generate(
                                  participants.length,
                                  (int index) {
                                    return DataRow(
                                      cells: [
                                        DataCell(Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              margin: EdgeInsets.all(8),
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                // borderRadius: BorderRadius.circular(
                                                //     5), // Sets border radius to 15
                                                border: Border.all(
                                                  color: AppColors.grey,
                                                  // Border color
                                                  width: 1, // Border width
                                                ),
                                              ),
                                            ),
                                            Text("0${index}"),
                                          ],
                                        )),
                                        DataCell(
                                            Text(participants[index].name)),
                                        DataCell(
                                            Text(participants[index].gender)),
                                      ],
                                    );
                                  },
                                ),
                              );
                            }),
                      )
                    ]),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
