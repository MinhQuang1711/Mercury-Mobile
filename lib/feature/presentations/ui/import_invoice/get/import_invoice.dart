import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/enum/screen.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/widget/filter_button.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/widget/listview.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';
import 'package:mercury/feature/presentations/widget/global_listener.dart';

import '../../../bloc/global_cubit/cubit.dart';
import '../../../bloc/import_invoice/bloc/bloc.dart';
import 'widget/listener.dart';
import 'widget/overview.dart';
import 'widget/search_bar.dart';

var defaultImportInvoiceEvent = ImportInvoiceEvent.get(
    InvoiceQuery(startTime: DateTime.now(), endTime: DateTime.now()));

class ImportInvoiceScreen extends StatelessWidget {
  const ImportInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt.get<ImportInvoiceBloc>()..add(defaultImportInvoiceEvent)),
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
    final bloc = context.read<ImportInvoiceBloc>();
    void onTapCreate() {
      context.pushAndListen(
        location: AppPath.createImportInvoice,
        handleWhenHasValue: () {
          final globalCubit = context.read<GlobalCubit>();
          bloc.add(defaultImportInvoiceEvent);
          globalCubit.changedReloadDashboard();
          globalCubit.changedreloadIngredient();
        },
      );
    }

    return GlobalListenerWidget(
      screenEnum: ScreenEnum.IMPORT_INVOICE,
      functionReload: () => bloc.add(defaultImportInvoiceEvent),
      child: ImportBlocListenWidget(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  const ImportInvoiceSearchBar(),
                  const SizedBox(width: 10),
                  CreateSquareButton(onTap: onTapCreate),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(
                children: [
                  Expanded(child: ImportInvoiceFilterButton()),
                  ImportInvoiceOverview(),
                ],
              ),
            ),
            const Divider(thickness: 8),
            const ImportInvoiceList(),
          ],
        ),
      ),
    );
  }
}
