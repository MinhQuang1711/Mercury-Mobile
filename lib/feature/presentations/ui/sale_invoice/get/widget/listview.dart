import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/delete/delete.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/get/sale_invoice.dart';
import 'package:mercury/feature/presentations/widget/list_view/list_view.dart';

import 'card.dart';

class ListSaleInvoice extends StatefulWidget {
  const ListSaleInvoice({super.key});

  @override
  State<ListSaleInvoice> createState() => _ListSaleInvoiceState();
}

class _ListSaleInvoiceState extends State<ListSaleInvoice> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaleInvoiceBloc>();
    return Expanded(
      child: BlocBuilder<GetSaleInvoiceCubit, GetSaleInvoiceState>(
        buildWhen: (p, c) => p.list != c.list,
        builder: (context, state) => AppListView(
          items: state.list,
          child: ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (context, index) => SaleInvoiceCard(
              saleInvoice: state.list[index],
              onDelete: (val) => context.showBottomSheetAndListen(
                child: DeleteSaleInvoiceScreen(saleInvoice: val),
                handleWhenHasValue: () => bloc.add(defaultSaleInvoiceEvent),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
