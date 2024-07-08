import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class SaleInvoiceSearchBar extends StatefulWidget {
  const SaleInvoiceSearchBar({super.key});

  @override
  State<SaleInvoiceSearchBar> createState() => _SaleInvoiceSearchBarState();
}

class _SaleInvoiceSearchBarState extends State<SaleInvoiceSearchBar> {
  late final SaleInvoiceBloc _bloc;
  final _controller = TextEditingController();
  @override
  void initState() {
    _bloc = context.read<SaleInvoiceBloc>();
    _bloc.stream.listen(_listenWhenSearchWithOutId);
    super.initState();
  }

  void _listenWhenSearchWithOutId(SaleInvoiceState state) {
    state.whenOrNull(
      got: (query, pagedList) {
        if (query.id == null) {
          _controller.clear();
        }
      },
    );
  }

  void _onChanged(String? val) {
    var dto = InvoiceQuery(id: val?.trim());
    _bloc.add(SaleInvoiceEvent.get(dto));
  }

  // void _onTapFilter() async {
  //   var result = await context.showAppDateRangePicker();
  //   if (result != null) {
  //     var dto = InvoiceQuery(startTime: result.start, endTime: result.end);
  //     _bloc.add(SaleInvoiceEvent.get(dto));
  //   }
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextField(
        canDelete: true,
        onChanged: _onChanged,
        controller: _controller,
        prefWidget: const SearchIcon(),
        hintText: "Tìm kiếm theo mã hóa đơn",
        onTapClearButton: () => _onChanged(null),
        // sufWidget: SquareFilterIcon(onTap: _onTapFilter),
      ),
    );
  }
}
