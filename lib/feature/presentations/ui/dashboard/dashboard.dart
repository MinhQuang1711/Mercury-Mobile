import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<DashboardCubit>()
        ..getfinancialRecordOfDay()
        ..getfinancialRecordOfMonth()
        ..getChartOfDay()
        ..getChartOfMonth(),
      child: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // margin: AppPadding.padding12,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColor.blue, AppColor.blueShade2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Positioned.fill(
            top: 180,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: AppColor.white,
              child: const Column(
                children: [],
              ),
            ),
          ),
          const Positioned(
            top: 70,
            right: 0,
            left: 0,
            child: OverViewBar(),
          )
        ],
      ),
    );
  }
}
