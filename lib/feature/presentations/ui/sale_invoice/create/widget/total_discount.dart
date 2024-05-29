import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/create/widget/info.dart';

class TotalDiscount extends StatelessWidget {
  const TotalDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return SaleInvoiceInfo(
      title: "Giảm giá",
      content: 0.0.formatNumber(),
    );
  }
}
