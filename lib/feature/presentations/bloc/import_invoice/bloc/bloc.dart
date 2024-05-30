import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';

class ImportInvoiceBloc extends Bloc<ImportInvoiceEvent, ImportInvoiceState> {
  final IImportInvoiceRepository repo;
  ImportInvoiceBloc(this.repo) : super(const ImportInvoiceState.init()) {
    on<ImportInvoiceEvent>(_onEvent);
  }

  void _onEvent(ImportInvoiceEvent event, Emitter emitter) async {
    await event.when(get: (query) async => _get(query, emitter));
  }

  Future _get(InvoiceQuery query, Emitter emitter) async {
    emitter(const ImportInvoiceState.loading());
    (await repo.get(query)).on(
      whenSuccess: (data) =>
          emitter(ImportInvoiceState.getSuccess(query: query, pagedList: data)),
      whenFaild: (msg) => emitter(ImportInvoiceState.failure(msg)),
    );
  }
}
