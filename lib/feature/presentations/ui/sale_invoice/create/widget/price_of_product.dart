import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/create/widget/info.dart';

class PriceOfProduct extends StatelessWidget {
  const PriceOfProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SaleInvoiceInfo(
      title: "Tiền sản phẩm",
      content: 0.0.formatNumber(),
    );
  }
}
