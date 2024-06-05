import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/get/sale_invoice.dart';

import '../../../../bloc/dashboard/cubit.dart';

class SaleInvoiceListenWidget extends StatelessWidget {
  const SaleInvoiceListenWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaleInvoiceBloc>();
    final dashboardCubit = context.read<DashboardCubit>();
    return BlocListener<SaleInvoiceBloc, SaleInvoiceState>(
      listener: (context, state) => state.whenOrNull(
        created: (msg) {
          context.pop(msg);
          bloc.add(defaultSaleInvoiceEvent);
          dashboardCubit
            ..getChartOfDay()
            ..getChartOfMonth()
            ..getfinancialRecordOfDay()
            ..getfinancialRecordOfMonth();
          return null;
        },
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
