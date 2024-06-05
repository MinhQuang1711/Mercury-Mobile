import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/item_of_chart.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

class ChartOfDay extends StatelessWidget {
  const ChartOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.chartOfDay != c.chartOfDay,
      builder: (context, state) {
        return state.chartOfDay.isEmpty ? const EmptyWidget() : _chart(state);
      },
    );
  }

  SingleChildScrollView _chart(DashboardState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PieChart(
              PieChartData(
                sections: state.chartOfDay.map((e) {
                  int index = state.chartOfDay.indexOf(e);
                  return PieChartSectionData(
                    value: e.numberSold?.toDouble(),
                    color: chartColors[index],
                    title: "${e.numberSold ?? 0}",
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: state.chartOfDay.map((e) {
              int index = state.chartOfDay.indexOf(e);
              return ItemOfChart(
                content: e.name,
                color: chartColors[index],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

var chartColors = [
  Colors.amber,
  const Color.fromARGB(255, 49, 98, 51),
  const Color.fromARGB(255, 140, 29, 66),
  const Color.fromARGB(255, 11, 70, 118),
];
