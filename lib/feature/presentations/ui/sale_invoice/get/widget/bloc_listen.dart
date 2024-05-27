import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';

class SaleInvoiceBlocListenWidget extends StatelessWidget {
  const SaleInvoiceBlocListenWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetSaleInvoiceCubit>();
    return BlocListener<SaleInvoiceBloc, SaleInvoiceState>(
      listener: (context, state) => state.whenOrNull(
        got: (query, pagedList) =>
            cubit.handleList(query: query, pagedList: pagedList),
      ),
      child: child,
    );
  }
}
