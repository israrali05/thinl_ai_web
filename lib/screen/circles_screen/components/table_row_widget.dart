import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';

class TableRowWidget extends StatelessWidget {
  const TableRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Table(children: [
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('#',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Name',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Gender',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Department',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Experience',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Designation',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Status',
                  style: AppTextStyles.hintStyle.copyWith(
                      fontSize: 18,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
        TableRow(children: [
          TableDataCellWiget(text: "01"),
          TableDataCellWiget(text: "Shevan"),
          TableDataCellWiget(text: "Male"),
          TableDataCellWiget(text: "Human Resources"),
          TableDataCellWiget(text: "04 Years"),
          TableDataCellWiget(text: "HR"),
          TableDataCellWiget(text: "Inactive"),
        ]),
      ]),
    );
  }
}

class TableDataCellWiget extends StatelessWidget {
  final String text;
  const TableDataCellWiget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            style: AppTextStyles.hintStyle.copyWith(
              fontSize: 18,
            )),
      ),
    );
  }
}
