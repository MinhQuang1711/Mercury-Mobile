import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/import_invoice/import_invoice.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

import '../../../../../core/utils/injection/get_it.dart';

class DeleteImportInvoice extends StatelessWidget {
  const DeleteImportInvoice({super.key, required this.importInvoice});
  final ImportInvoice importInvoice;
  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ImportInvoiceBloc>();

    return BlocListener<ImportInvoiceBloc, ImportInvoiceState>(
      bloc: bloc,
      listener: (context, state) {
        state.whenOrNull(
          success: (msg) => context.pop(msg),
          failure: (msg) {
            context.pop();
            context.showFailureSnackBar(msg);
          },
        );
      },
      child: NotifiDialog(
          onTap: () =>
              bloc.add(ImportInvoiceEvent.delete(importInvoice.id ?? ""))),
    );
  }
}
