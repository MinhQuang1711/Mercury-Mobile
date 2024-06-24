import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

import '../../../widget/chart/chart.dart';

class ChartOfMonth extends StatelessWidget {
  const ChartOfMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.chartOfMonth != c.chartOfMonth,
      builder: (context, state) {
        int max = 10;
        if (state.chartOfMonth.isNotEmpty) {
          max = state.chartOfMonth
                  .map((e) => e.numberSold ?? 1)
                  .reduce((a, b) => a > b ? a : b) +
              3;
        }
        return state.chartOfMonth.isEmpty
            ? const EmptyWidget()
            : AppChart(
                maxY: max.toDouble(),
                items: state.chartOfMonth,
              );
      },
    );
  }
}
