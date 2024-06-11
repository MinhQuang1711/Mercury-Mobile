import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

class PriceOfProduct extends StatelessWidget {
  const PriceOfProduct({super.key, this.price});
  final double? price;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
      buildWhen: (previous, current) =>
          previous.request.detailSaleInvoice !=
          current.request.detailSaleInvoice,
      builder: (context, state) {
        return SaleInvoiceInfo(
            title: "Tiền sản phẩm",
            content: (price ?? state.totalPrice).formatNumber());
      },
    );
  }
}
