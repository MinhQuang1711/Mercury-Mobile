import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';

import 'widget/bloc_listen.dart';
import 'widget/listview.dart';
import 'widget/search_bar.dart';

const defaultSaleInvoiceEvent = SaleInvoiceEvent.get(InvoiceQuery());

class SaleInvoiceScreen extends StatelessWidget {
  const SaleInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<GetSaleInvoiceCubit>()),
        BlocProvider(
            create: (_) =>
                getIt.get<SaleInvoiceBloc>()..add(defaultSaleInvoiceEvent))
      ],
      child: const SaleInvoicePage(),
    );
  }
}

class SaleInvoicePage extends StatelessWidget {
  const SaleInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SaleInvoiceBlocListenWidget(
      child: Column(
        children: [
          SaleInvoiceSearchBar(),
          SizedBox(height: 10),
          ListSaleInvoice(),
        ],
      ),
    );
  }
}
