import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mercury/feature/data/model/chart_item/chart_item.dart';

import '../../../../config/theme/color.dart';
import '../../ui/dashboard/widget/chart_of_day.dart';

class AppChart extends StatelessWidget {
  const AppChart({super.key, this.maxY, this.items});
  final double? maxY;
  final List<ChartItem>? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 300,
      child: BarChart(
        BarChartData(
          maxY: maxY,
          gridData: const FlGridData(
            show: true,
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(
            border: Border.all(color: AppColor.grey4, width: 0.7),
          ),
          titlesData: const FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(),
            topTitles: AxisTitles(),
          ),
          barGroups: items
              ?.map((e) => BarChartGroupData(
                    barRods: [
                      BarChartRodData(
                          width: 20,
                          borderRadius: BorderRadius.circular(2),
                          color: chartColors[items?.indexOf(e) ?? 0],
                          toY: e.numberSold?.toDouble() ?? 1)
                    ],
                    x: items?.indexOf(e) ?? 0,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
