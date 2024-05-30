import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/state/state.dart';
import 'package:mercury/feature/presentations/widget/list_view/list_view.dart';

class ImportInvoiceList extends StatelessWidget {
  const ImportInvoiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetImportInvoiceCubit, GetImportInvoiceState>(
        buildWhen: (previous, current) => previous.list != current.list,
        builder: (context, state) => AppListView(
            items: state.list,
            child: ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) => Text(state.list[index].id ?? ""),
            )),
      ),
    );
  }
}
