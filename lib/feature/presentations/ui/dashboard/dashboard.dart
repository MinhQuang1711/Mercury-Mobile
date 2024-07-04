import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/domain/enum/screen.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/line_chart.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';
import 'package:mercury/feature/presentations/widget/global_listener.dart';

import '../../../../core/utils/injection/get_it.dart';
import 'widget/chart.dart';
import 'widget/create_invoice_row.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<DashboardCubit>()
        ..getfinancialRecordOfDay()
        ..getfinancialRecordOfMonth()
        ..getChartOfDay()
        ..getChartOfMonth()
        ..getFinancialOf7Days(),
      child: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    void reloadDashboard() {
      context.read<DashboardCubit>()
        ..getfinancialRecordOfDay()
        ..getfinancialRecordOfMonth()
        ..getChartOfDay()
        ..getChartOfMonth()
        ..getFinancialOf7Days();
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.blue,
        centerTitle: true,
        title: Text(
          "Mercury.Homebrew",
          style: h6ExtraBold.copyWith(color: AppColor.white),
        ),
      ),
      body: GlobalListenerWidget(
        screenEnum: ScreenEnum.DASHBOARD,
        functionReload: reloadDashboard,
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPadding.padding12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OverViewBar(),
            const SizedBox(height: 5),
            const CreateInvoiceRow(),
            Text(
              "Tài chính ",
              style: captionBold.copyWith(color: AppColor.grey5),
            ),
            const SizedBox(height: 15),
            const DashboardLineChart(),
            const Chart(),
          ],
        ),
      ),
    );
  }
}
