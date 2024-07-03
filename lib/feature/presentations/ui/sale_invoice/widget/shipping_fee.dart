import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

import '../../../bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import '../../../bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';

class ShippingFeeField extends StatelessWidget {
  const ShippingFeeField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
      buildWhen: (previous, current) =>
          previous.request.shippingFee != current.request.shippingFee,
      builder: (context, state) => SaleInvoiceInfo(
          title: "Phí vận chuyển",
          content: (state.request.shippingFee ?? 0).formatNumber()),
    );
  }
}
