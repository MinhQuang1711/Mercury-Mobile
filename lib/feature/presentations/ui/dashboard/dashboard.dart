import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/gradient.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/financial.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

import 'widget/chart.dart';
import 'widget/create_invoice_row.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardPage();
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blue,
        centerTitle: true,
        title: Text(
          "Mercury.Homebrew",
          style: h6ExtraBold.copyWith(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OverViewBar(),
          const SizedBox(height: 25),
          Text(
            "Biểu đồ tài chính 7 ngày gần nhất",
            style: captionBold.copyWith(color: AppColor.grey5),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            child: BlocBuilder<DashboardCubit, DashboardState>(
                buildWhen: (previous, current) =>
                    previous.financial != current.financial,
                builder: (context, state) {
                  double maxValue = 0;
                  if (state.financial.isNotEmpty) {
                    maxValue = state.financial
                        .getMaxValue()
                        .roundedNumber()
                        .toDouble();
                  }
                  return LineChart(
                    LineChartData(
                      maxY: maxValue,
                      borderData: FlBorderData(
                          border: const Border(
                              bottom: BorderSide(
                        width: 0.1,
                      ))),
                      gridData: FlGridData(
                        drawVerticalLine: false,
                        drawHorizontalLine: true,
                        getDrawingHorizontalLine: (value) => const FlLine(
                          strokeWidth: 0.07,
                        ),
                      ),
                      lineTouchData: LineTouchData(
                        touchTooltipData: LineTouchTooltipData(
                          maxContentWidth: 350,
                          getTooltipColor: (touchedSpot) => AppColor.white,
                          tooltipBorder: const BorderSide(width: 0.2),
                          getTooltipItems: (touchedSpots) =>
                              touchedSpots.map((e) {
                            String title = "";
                            if (e.bar.color == AppColor.blue) {
                              title = "Doanh thu";
                            } else if (e.bar.color == AppColor.green) {
                              title = "Lợi nhuận";
                            } else {
                              title = "Nhập hàng";
                            }
                            return LineTooltipItem(
                                "$title:      ", detailRegular,
                                textAlign: TextAlign.start,
                                children: [
                                  TextSpan(
                                    text: e.y.formatNumber(),
                                    style: captionMedium.copyWith(
                                        color: e.bar.color),
                                  )
                                ]);
                          }).toList(),
                        ),
                      ),
                      titlesData: FlTitlesData(
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
                              var financialIndex =
                                  state.financial.indexOf(item);
                              if ((value % 1 == 0) &&
                                  (value.toInt() == financialIndex)) {
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
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: true,
                          barWidth: 1,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                              show: true,
                              gradient: AppGradient.getGreenGradient()),
                          color: AppColor.green,
                          spots: state.financial
                              .map((e) => FlSpot(
                                  state.financial.indexOf(e).toDouble(),
                                  e.profit ?? 0))
                              .toList(),
                        ),
                        LineChartBarData(
                          isCurved: true,
                          barWidth: 1,
                          dotData: const FlDotData(show: false),
                          color: AppColor.blue,
                          spots: state.financial
                              .map((e) => FlSpot(
                                  state.financial.indexOf(e).toDouble(),
                                  e.revenue ?? 0))
                              .toList(),
                        ),
                        LineChartBarData(
                          isCurved: true,
                          barWidth: 1,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                              show: true,
                              gradient: AppGradient.getRedGradient()),
                          color: AppColor.red,
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
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CreateInvoiceRow(),
          ),
          const Chart(),
        ],
      ),
    );
  }
}
