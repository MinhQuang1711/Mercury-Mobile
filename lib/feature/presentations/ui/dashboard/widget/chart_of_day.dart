import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/item_of_chart.dart';

class ChartOfDay extends StatelessWidget {
  const ChartOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.chartOfDay != c.chartOfDay,
      builder: (context, state) {
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
      },
    );
  }
}

var chartColors = [
  Colors.amber,
  Colors.green,
  Colors.pink.shade400,
  Colors.cyan,
];
