import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

class DeleteSaleInvoiceScreen extends StatelessWidget {
  const DeleteSaleInvoiceScreen({super.key, required this.saleInvoice});
  final SaleInvoice saleInvoice;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaleInvoiceBloc>();
    final dashboardCubit = context.read<DashboardCubit>();
    return BlocListener<SaleInvoiceBloc, SaleInvoiceState>(
      listener: (context, state) {
        state.whenOrNull(
          deleted: (msg) {
            context.pop(msg);
            dashboardCubit
              ..getChartOfDay()
              ..getChartOfMonth()
              ..getfinancialRecordOfDay()
              ..getfinancialRecordOfMonth();
          },
          failure: (msg) => context.showFailureSnackBar(msg),
        );
      },
      child: NotifiDialog(
        content: saleInvoice.id,
        onTap: () => bloc.add(SaleInvoiceEvent.delete(saleInvoice.id ?? "")),
      ),
    );
  }
}
