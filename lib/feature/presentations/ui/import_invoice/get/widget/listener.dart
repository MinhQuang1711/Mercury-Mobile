import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';

class ImportBlocListenWidget extends StatelessWidget {
  const ImportBlocListenWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetImportInvoiceCubit>();
    return BlocListener<ImportInvoiceBloc, ImportInvoiceState>(
      listener: (context, state) => state.whenOrNull(
        getSuccess: (query, pagedList) =>
            cubit.handleList(query: query, list: pagedList.items),
      ),
      child: child,
    );
  }
}
