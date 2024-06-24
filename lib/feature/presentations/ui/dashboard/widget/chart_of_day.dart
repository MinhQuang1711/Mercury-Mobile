import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

import '../../../widget/chart/chart.dart';

class ChartOfDay extends StatelessWidget {
  const ChartOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.chartOfDay != c.chartOfDay,
      builder: (context, state) {
        int max = 10;
        if (state.chartOfDay.isNotEmpty) {
          max = state.chartOfDay
                  .map((e) => e.numberSold ?? 1)
                  .reduce((a, b) => a > b ? a : b) +
              3;
        }
        return state.chartOfDay.isEmpty
            ? const EmptyWidget()
            : AppChart(
                maxY: max.toDouble(),
                items: state.chartOfDay,
              );
      },
    );
  }
}

var chartColors = [
  const Color.fromARGB(255, 255, 219, 111),
  const Color.fromARGB(255, 112, 255, 117),
  const Color.fromARGB(255, 221, 76, 125),
  const Color.fromARGB(255, 25, 147, 247),
  const Color.fromARGB(255, 189, 122, 255),
  const Color.fromARGB(255, 253, 136, 136),
  const Color.fromARGB(255, 174, 216, 250),
  const Color.fromARGB(255, 131, 81, 81),
  const Color.fromARGB(255, 74, 95, 111),
  const Color.fromARGB(255, 131, 81, 81),
  const Color.fromARGB(255, 74, 95, 111),
  const Color.fromARGB(255, 131, 81, 81),
  const Color.fromARGB(255, 74, 95, 111),
];
