import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import '../../../../widget/square_filter_icon.dart';

class SaleInvoiceSearchBar extends StatefulWidget {
  const SaleInvoiceSearchBar({super.key});

  @override
  State<SaleInvoiceSearchBar> createState() => _SaleInvoiceSearchBarState();
}

class _SaleInvoiceSearchBarState extends State<SaleInvoiceSearchBar> {
  late final SaleInvoiceBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<SaleInvoiceBloc>();
    super.initState();
  }

  void _onChanged(String? val) {
    var dto = InvoiceQuery(id: val?.trim());
    _bloc.add(SaleInvoiceEvent.get(dto));
  }

  void _onTapFilter() {
    // TODO: show dialog to select date range
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding12,
      child: AppTextField(
        onChanged: _onChanged,
        prefWidget: const SearchIcon(),
        hintText: "Tìm kiếm theo mã hóa đơn",
        onTapClearButton: () => _onChanged(null),
        sufWidget: SquareFilterIcon(onTap: _onTapFilter),
      ),
    );
  }
}
