import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import '../../../../widget/square_filter_icon.dart';

class SaleInvoiceSearchBar extends StatefulWidget {
  const SaleInvoiceSearchBar({super.key});

  @override
  State<SaleInvoiceSearchBar> createState() => _SaleInvoiceSearchBarState();
}

class _SaleInvoiceSearchBarState extends State<SaleInvoiceSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding12,
      // width: double.infinity,/
      child: const AppTextField(
        prefWidget: SearchIcon(),
        sufWidget: SquareFilterIcon(),
        hintText: "Tìm kiếm theo mã hóa đơn",
      ),
    );
  }
}
