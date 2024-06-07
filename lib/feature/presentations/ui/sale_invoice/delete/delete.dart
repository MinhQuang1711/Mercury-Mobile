import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

class DeleteSaleInvoiceScreen extends StatelessWidget {
  const DeleteSaleInvoiceScreen({super.key, required this.saleInvoice});
  final SaleInvoice saleInvoice;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaleInvoiceBloc, SaleInvoiceState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: NotifiDialog(
        content: saleInvoice.id,
        onTap: () {},
      ),
    );
  }
}
