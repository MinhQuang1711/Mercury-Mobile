import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/bloc.dart';
import 'package:mercury/feature/presentations/ui/report/sale_report/widget/overview.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../bloc/sale_report/cubit/cubit.dart';
import 'widget/select_date_range_button.dart';
import 'widget/submit_button.dart';

class SaleReportScreen extends StatelessWidget {
  const SaleReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<SaleReportCubit>()),
        BlocProvider(create: (_) => getIt.get<SaleReportBloc>()),
      ],
      child: const SaleReportPage(),
    );
  }
}

class SaleReportPage extends StatelessWidget {
  const SaleReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SaleReportCubit>();
    return Scaffold(
      appBar: CreateAppBar(
        context,
        titleAppbar: "Báo cáo hoạt động kinh doanh",
      ),
      body: AppStack(
        backgroundWidget: Column(
          children: [
            SelectDateRangeButton(cubit: cubit),
            const SizedBox(height: 20),
            const SubmitButton(),
          ],
        ),
        bottomWidget: const SaleReportOverview(),
      ),
    );
  }
}
