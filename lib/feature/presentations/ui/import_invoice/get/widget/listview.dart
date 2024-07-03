import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/state/state.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/delete/delete.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/import_invoice.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/widget/card.dart';
import 'package:mercury/feature/presentations/widget/list_view/list_view.dart';
import 'package:mercury/feature/presentations/widget/listen_scroll_widget.dart';

import '../../../../bloc/global_cubit/cubit.dart';

class ImportInvoiceList extends StatefulWidget {
  const ImportInvoiceList({super.key});

  @override
  State<ImportInvoiceList> createState() => _ImportInvoiceListState();
}

class _ImportInvoiceListState extends State<ImportInvoiceList> {
  final _controller = ScrollController();
  late ImportInvoiceBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<ImportInvoiceBloc>();
    super.initState();
  }

  void _loadMore() {
    final cubit = context.read<GetImportInvoiceCubit>();
    final int nexIndex = (cubit.state.query.pageNumber ?? 1) + 1;
    _bloc.add(ImportInvoiceEvent.get(
        cubit.state.query.copyWith(pageNumber: nexIndex)));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ImportInvoiceBloc>();
    return Expanded(
      child: BlocBuilder<GetImportInvoiceCubit, GetImportInvoiceState>(
        buildWhen: (previous, current) => previous.list != current.list,
        builder: (context, state) => ListenScrollWidget(
          controller: _controller,
          handleScrollEndOfList: _loadMore,
          child: AppListView(
              items: state.list,
              onRefreshing: () => _bloc.add(defaultImportInvoiceEvent),
              child: ListView.builder(
                controller: _controller,
                itemCount: state.list.length,
                itemBuilder: (context, index) => ImportInvoiceCard(
                  invoice: state.list[index],
                  onDelete: (val) => context.showBottomSheetAndListen(
                    child: DeleteImportInvoice(importInvoice: val),
                    handleWhenHasValue: () {
                      bloc.add(defaultImportInvoiceEvent);
                      context.read<GlobalCubit>().changedReloadDashboard();
                    },
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
