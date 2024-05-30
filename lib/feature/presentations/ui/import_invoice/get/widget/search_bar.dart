import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import '../../../../bloc/import_invoice/bloc/state/state.dart';
import '../../../../widget/square_filter_icon.dart';

class ImportInvoiceSearchBar extends StatefulWidget {
  const ImportInvoiceSearchBar({super.key});

  @override
  State<ImportInvoiceSearchBar> createState() => _ImportInvoiceSearchBarState();
}

class _ImportInvoiceSearchBarState extends State<ImportInvoiceSearchBar> {
  final _controller = TextEditingController();
  late final ImportInvoiceBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<ImportInvoiceBloc>();
    _bloc.stream.listen((state) => _listenWhenSearchWithOutId(state));
    super.initState();
  }

  void _listenWhenSearchWithOutId(ImportInvoiceState state) {
    state.whenOrNull(
      getSuccess: (query, pagedList) {
        if (query.id == null) {
          _controller.clear();
        }
      },
    );
  }

  void _onChanged(String? val) {
    final query = InvoiceQuery(id: val?.trim());
    _bloc.add(ImportInvoiceEvent.get(query));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppPadding.padding12,
        child: AppTextField(
          canDelete: true,
          onChanged: _onChanged,
          controller: _controller,
          hintText: "Tìm theo mã hóa đơn",
          prefWidget: const SearchIcon(),
          onTapClearButton: () => _onChanged(null),
          sufWidget: const SquareFilterIcon(),
        ),
      ),
    );
  }
}
