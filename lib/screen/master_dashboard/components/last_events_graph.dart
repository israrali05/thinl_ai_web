import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../utils/app_colors/colors.dart';

class LastEventsGraph extends StatelessWidget {
  const LastEventsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.primary),
      ),
      width: double.infinity,
      child: Container(
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: NumericAxis(
            interval: 1,
            majorGridLines: MajorGridLines(width: 0),
            minorGridLines: MinorGridLines(width: 0),
            maximum: 9,
            minimum: 0,
          ),
          primaryYAxis: NumericAxis(
            isVisible: false,
            majorGridLines: MajorGridLines(width: 0),
            minorGridLines: MinorGridLines(width: 0),
          ),
          legend: Legend(isVisible: false),
          series: <ChartSeries>[
            SplineSeries<SalesData, double>(
              splineType: SplineType.monotonic,
              cardinalSplineTension: 0.9,
              dataSource: <SalesData>[
                SalesData(0, 50),
                SalesData(1, 0),
                SalesData(2, 80),
                SalesData(3, 10),
                SalesData(4, 40),
                SalesData(5, 60),
                SalesData(6, 70),
                SalesData(7, 10),
                SalesData(8, 50),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              name: '',
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final double year;
  final double sales;
}
