import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import '../../../bloc/sale_report/cubit/cubit.dart';
import 'widget/select_date_range_button.dart';

class SaleReportScreen extends StatelessWidget {
  const SaleReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<SaleReportCubit>()),
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
      body: Padding(
        padding: AppPadding.padding16,
        child: Column(
          children: [
            SelectDateRangeButton(cubit: cubit),
            const SizedBox(height: 20),
            const AppButton(
              label: "Xác nhận",
              buttonSize: ButtonSize.SIZE_24,
              backgroundColor: AppColor.blue,
            )
          ],
        ),
      ),
    );
  }
}
