import 'package:flutter/material.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../gen/assets.gen.dart';
import 'item_filter.dart';

class SaleInvoiceFilterButton extends StatelessWidget {
  const SaleInvoiceFilterButton({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icon.calendar.keyName),
            size: 18,
            color: AppColor.grey5,
          ),
          const SizedBox(width: 10),
          const ItemFilterOfSaleInvoice(),
        ],
      ),
    );
  }
}
