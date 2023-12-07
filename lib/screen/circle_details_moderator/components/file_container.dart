import 'package:flutter/material.dart';
import 'package:project22/model/detail_cirecle_model.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:project22/utils/app_images/app_images.dart';
import 'package:project22/utils/my_size/mysize.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: MySize.size30,
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
                      SizedBox(
                        height: MySize.size15,
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
                                    'User Code',
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
                                      label: Text(
                                    'Files Link',
                                    style: AppTextStyles.hintStyle.copyWith(
                                        color: AppColors.primary, fontSize: 18),
                                  )),
                                  DataColumn(
                                      label: Text('Action',
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
                                              width: MySize.size25,
                                              height: MySize.size25,
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
                                            Text(participants[index].userCode)),
                                        DataCell(
                                            Text(participants[index].name)),
                                        DataCell(
                                            Text(participants[index].userCode)),
                                        DataCell(Image.asset(
                                          AppImages.threeDotsPng,
                                          height: MySize.size20,
                                        ))
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
            ],
          ),
        ],
      ),
    );
  }
}
