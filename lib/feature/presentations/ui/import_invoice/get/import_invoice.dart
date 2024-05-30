import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/widget/listview.dart';

import 'widget/listener.dart';

var defaultImportInvoiceEvent = const ImportInvoiceEvent.get(InvoiceQuery());

class ImportInvoiceScreen extends StatelessWidget {
  const ImportInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt.get<ImportInvoiceBloc>()..add(defaultImportInvoiceEvent),
        ),
        BlocProvider(create: (_) => getIt.get<GetImportInvoiceCubit>()),
      ],
      child: const ImportInvoicePage(),
    );
  }
}

class ImportInvoicePage extends StatelessWidget {
  const ImportInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImportBlocListenWidget(
      child: Column(
        children: [
          ImportInvoiceList(),
        ],
      ),
    );
  }
}
