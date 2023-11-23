import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';

class TableHeadingWidget extends StatelessWidget {
  const TableHeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue, // Background color of the row
        borderRadius:
            BorderRadius.circular(5.0), // Adjust the radius for rounded corners
      ),
      child: Table(
        children: [
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('C.L', style: AppTextStyles.smallheadingtable),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Darlene',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Female',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Manning',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('2 Years',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Chief Executive ',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Recent',
                      style: AppTextStyles.hintStyle.copyWith(
                          color: AppColors.textWhiteColor, fontSize: 18)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}