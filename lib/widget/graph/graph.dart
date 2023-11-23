import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:project22/utils/app_colors/colors.dart';
import 'data.dart';

class Graph extends StatelessWidget {
  final List<GraphData> points;

  const Graph({required this.points, super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
              color: AppColors.primary,
              isCurved: false,
              show: true,
              preventCurveOverShooting: true,
              barWidth: 3,
              aboveBarData:
                  BarAreaData(spotsLine: const BarAreaSpotsLine(show: false)),
              shadow: const Shadow(
                  color: AppColors.secondary, blurRadius: double.maxFinite),
            ),
          ],
        ),
      ),
    );
  }
}
