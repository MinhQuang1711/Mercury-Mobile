import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/info.dart';

class FinalPrice extends StatelessWidget {
  const FinalPrice({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return SaleInvoiceInfo(
      title: "Tổng sau giảm",
      content: price.formatNumber(),
      contentStyle: bodyBold.copyWith(color: AppColor.blue),
    );
  }
}
