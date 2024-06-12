import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/data/model/chart_item/chart_item.dart';

import '../../../../config/theme/color.dart';

class AppChart extends StatefulWidget {
  const AppChart({super.key, this.maxY, this.items});
  final double? maxY;
  final List<ChartItem>? items;

  @override
  State<AppChart> createState() => _AppChartState();
}

class _AppChartState extends State<AppChart> {
  int touchedIndex = -1;
  int oldToucedIndex = -1;
  void touchCallback(FlTouchEvent event, BarTouchResponse? barTouchResponse) {
    setState(() {
      if (!event.isInterestedForInteractions ||
          barTouchResponse == null ||
          barTouchResponse.spot == null) {
        touchedIndex = oldToucedIndex;
        return;
      }
      touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
      oldToucedIndex = touchedIndex;
    });
  }

  Color getColor(ChartItem e) {
    if (widget.items?.indexOf(e) == touchedIndex) {
      return AppColor.blueShade2;
    }
    return AppColor.grey3;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 300,
      child: BarChart(
        BarChartData(
          maxY: widget.maxY,
          barTouchData: BarTouchData(
              touchCallback: touchCallback,
              touchTooltipData: BarTouchTooltipData(
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  int number = 0;
                  String name = "";

                  for (int i = 0; i < (widget.items ?? []).length; i++) {
                    if (group.x == i) {
                      name = (widget.items ?? [])[i].name ?? "";
                      number = (widget.items ?? [])[i].numberSold ?? 0;
                    }
                  }
                  return BarTooltipItem('$name\n$number',
                      captionRegular.copyWith(color: AppColor.blueShade2));
                },
                getTooltipColor: (val) => AppColor.grey2.withOpacity(0.5),
              )),
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
          barGroups: widget.items
              ?.map((e) => BarChartGroupData(
                    barRods: [
                      BarChartRodData(
                          width: 15,
                          color: getColor(e),
                          borderRadius: BorderRadius.circular(2),
                          toY: e.numberSold?.toDouble() ?? 1)
                    ],
                    x: widget.items?.indexOf(e) ?? 0,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
