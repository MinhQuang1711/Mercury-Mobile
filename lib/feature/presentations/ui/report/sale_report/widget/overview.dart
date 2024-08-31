import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';

class SaleReportOverview extends StatelessWidget {
  const SaleReportOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tổng doanh thu:"),
            Text("Tổng chi:"),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Tiền lãi sau cùng: ",
          style: bodyRegular,
        ),
      ],
    );
  }
}
