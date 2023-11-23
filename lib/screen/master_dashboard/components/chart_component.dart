import 'package:flutter/material.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'package:project22/utils/app_font_styles/app_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChartWidget extends StatefulWidget {
  String topText;

  DoughnutChartWidget({required this.topText});

  @override
  State<DoughnutChartWidget> createState() => _DoughnutChartWidgetState();
}

class _DoughnutChartWidgetState extends State<DoughnutChartWidget> {
  List<RadialData> chartData = [
    RadialData(25, ''),
    RadialData(75, ''),
  ];

  double calculatePercentage() {
    double total = chartData.fold(0, (prev, element) => prev + element.yData);
    double percentage = (chartData[0].yData / total) * 100;
    return percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.27,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SfCircularChart(
          title: ChartTitle(
            text: widget.topText,
            textStyle: TextStyle(
              fontSize: 16,
              overflow: TextOverflow.fade,
              fontWeight: FontWeight.w400,
              color: AppColors.textGreyColor,
              fontFamily: 'Source Sans Pro',
            ),
          ),
          palette: [Colors.blueAccent, Colors.blueGrey],
          series: [
            DoughnutSeries<RadialData, String>(
              dataSource: chartData,
              xValueMapper: (RadialData data, _) => data.xData,
              yValueMapper: (RadialData data, _) => data.yData,
              startAngle: 270,
              endAngle: 90,
              innerRadius: '70%',
              radius: "50",
            ),
          ],
          annotations: <CircularChartAnnotation>[
            CircularChartAnnotation(
              widget: Container(
                child: Text(
                  '${calculatePercentage()}%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGreyColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadialData {
  String xData;
  double yData;

  RadialData(this.yData, this.xData);
}
