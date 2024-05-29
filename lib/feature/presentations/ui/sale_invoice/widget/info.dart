import 'package:flutter/material.dart';

import '../../../../../config/theme/text_style.dart';

class SaleInvoiceInfo extends StatelessWidget {
  const SaleInvoiceInfo(
      {super.key,
      required this.title,
      required this.content,
      this.titleStyle,
      this.contentStyle});
  final String title;
  final String content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Expanded(
            child: Text(title, style: titleStyle ?? captionRegular),
          ),
          Text(
            "$content VND",
            style: contentStyle ?? captionMedium,
          )
        ],
      ),
    );
  }
}
