import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

class TotalDiscount extends StatelessWidget {
  const TotalDiscount({super.key, this.price});
  final double? price;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
      builder: (context, state) {
        return SaleInvoiceInfo(
          title: "Giảm giá",
          content: (price ?? state.totalDiscount).formatNumber(),
        );
      },
    );
  }
}
