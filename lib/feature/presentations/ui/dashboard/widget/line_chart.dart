import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/financial.dart';
import 'package:mercury/core/utils/extension/number.dart';

import '../../../../../config/const/gradient.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../bloc/dashboard/cubit.dart';
import '../../../bloc/dashboard/state/state.dart';

class DashboardLineChart extends StatelessWidget {
  const DashboardLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 300,
      child: BlocBuilder<DashboardCubit, DashboardState>(
          buildWhen: (previous, current) =>
              previous.financial != current.financial,
          builder: (context, state) {
            double maxValue = 0;
            if (state.financial.isNotEmpty) {
              maxValue =
                  state.financial.getMaxValue().roundedNumber().toDouble();
            }
            return LineChart(
              LineChartData(
                maxY: maxValue,
                borderData: _borderData(),
                gridData: _gridData(),
                lineTouchData: _lineTouchData(),
                titlesData: _titleData(state),
                lineBarsData: [
                  _lineBarData(
                    color: AppColor.green,
                    gradient: AppGradient.getGreenGradient(),
                    spots: state.financial
                        .map((e) => FlSpot(
                            state.financial.indexOf(e).toDouble(),
                            e.profit ?? 0))
                        .toList(),
                  ),
                  _lineBarData(
                    color: AppColor.blue,

                    // gradient: AppGradient.getBlueGradient(),
                    spots: state.financial
                        .map((e) => FlSpot(
                            state.financial.indexOf(e).toDouble(),
                            e.revenue ?? 0))
                        .toList(),
                  ),
                  _lineBarData(
                    color: AppColor.red,
                    gradient: AppGradient.getRedGradient(),
                    spots: state.financial
                        .map((e) => FlSpot(
                            state.financial.indexOf(e).toDouble(),
                            e.importPrice ?? 0))
                        .toList(),
                  ),
                ],
              ),
            );
          }),
    );
  }

  FlBorderData _borderData() {
    return FlBorderData(
        border: const Border(
            bottom: BorderSide(
      width: 0.1,
    )));
  }

  LineChartBarData _lineBarData({
    Gradient? gradient,
    Color? color,
    required List<FlSpot> spots,
  }) {
    return LineChartBarData(
      isCurved: true,
      barWidth: 1,
      color: color,
      spots: spots,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(
          show: gradient != null ? true : false, gradient: gradient),
    );
  }

  FlTitlesData _titleData(DashboardState state) {
    return FlTitlesData(
      show: true,
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          getTitlesWidget: (value, meta) => Text(
            meta.formattedValue,
            style: detailRegular,
          ),
        ),
      ),
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 40,
        getTitlesWidget: (value, meta) {
          String title = "";
          for (var item in state.financial) {
            var financialIndex = state.financial.indexOf(item);
            if ((value % 1 == 0) && (value.toInt() == financialIndex)) {
              title = item.date ?? "";
            }
          }
          var text = Text(title, style: detailRegular);
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: text,
          );
        },
      )),
      topTitles: const AxisTitles(),
      rightTitles: const AxisTitles(),
    );
  }

  LineTouchData _lineTouchData() {
    return LineTouchData(
      touchSpotThreshold: 1000,
      touchTooltipData: LineTouchTooltipData(
        fitInsideHorizontally: true,
        maxContentWidth: 350,
        getTooltipColor: (touchedSpot) => AppColor.white,
        tooltipBorder: const BorderSide(width: 0.2),
        getTooltipItems: (touchedSpots) => touchedSpots.map((e) {
          String title = "";
          if (e.bar.color == AppColor.blue) {
            title = "Doanh thu";
          } else if (e.bar.color == AppColor.green) {
            title = "Lợi nhuận";
          } else {
            title = "Nhập hàng";
          }
          return LineTooltipItem("$title:      ", detailRegular,
              textAlign: TextAlign.start,
              children: [
                TextSpan(
                  text: e.y.formatNumber(),
                  style:
                      captionMedium.copyWith(color: e.bar.color, fontSize: 13),
                )
              ]);
        }).toList(),
      ),
    );
  }

  FlGridData _gridData() {
    return FlGridData(
      drawVerticalLine: false,
      drawHorizontalLine: true,
      getDrawingHorizontalLine: (value) => const FlLine(
        strokeWidth: 0.07,
      ),
    );
  }
}
