import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

class FinalPrice extends StatelessWidget {
  const FinalPrice({super.key, this.initPrice});
  final double? initPrice;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
      builder: (context, state) {
        final double price = state.totalPrice - state.totalDiscount;
        return SaleInvoiceInfo(
          title: "Tổng sau giảm",
          content: (initPrice ?? price).formatNumber(),
          contentStyle: bodyBold.copyWith(color: AppColor.blue),
        );
      },
    );
  }
}
