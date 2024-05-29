import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

class ValueOfVoucher extends StatelessWidget {
  const ValueOfVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return SaleInvoiceInfo(
      title: "Giá trị voucher",
      content: 0.0.formatNumber(),
    );
  }
}
