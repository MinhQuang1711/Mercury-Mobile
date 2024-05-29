import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';

import 'card.dart';

class ProductsSelected extends StatelessWidget {
  const ProductsSelected({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonSaleInvoiceCubit>();

    return GreyContainer(
      child: BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
        buildWhen: (previous, current) =>
            previous.request.detailSaleInvoice !=
            current.request.detailSaleInvoice,
        builder: (context, state) {
          final list = state.request.detailSaleInvoice ?? [];
          return list.isEmpty
              ? const EmptyWidget()
              : Column(
                  children: list
                      .map((e) => DetailSaleInvoiceCard(
                            comboBox: e,
                            onAdd: cubit.addMoreDetailSaleInvoice,
                            onRemove: cubit.removeDetailSaleInvoice,
                          ))
                      .toList(),
                );
        },
      ),
    );
  }
}
