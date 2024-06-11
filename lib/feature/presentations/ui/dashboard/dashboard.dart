import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart_of_day.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/create_invoice_row.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

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

  Container _chart() {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(vertical: 30),
      height: 300,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: AppContainerBorder.radius6,
      ),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return BarChart(
            BarChartData(
              maxY: 5,
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
              barGroups: (state.chartOfMonth)
                  .map((e) => BarChartGroupData(
                        barRods: [
                          BarChartRodData(
                              width: 20,
                              borderRadius: BorderRadius.circular(2),
                              color: chartColors[state.chartOfMonth.indexOf(e)],
                              toY: e.numberSold?.toDouble() ?? 1)
                        ],
                        x: state.chartOfMonth.indexOf(e),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Mercury.Homebrew",
          //   style: h5Bold.copyWith(color: AppColor.darkRed),
          // ),
          // const SizedBox(height: 20),
          const OverViewBar(),
          const CreateInvoiceRow(),
          _chart(),
          // Container(
          //   decoration: BoxDecoration(
          //     color: AppColor.white,
          //     borderRadius: AppContainerBorder.radius6,
          //     boxShadow: defaultBoxShadow,
          //   ),
          //   child: const Chart(),
          // ),
        ],
      ),
    );
  }
}
