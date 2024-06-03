import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/import_invoice_request/import_invoice_request.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class ImportInvoiceBloc extends Bloc<ImportInvoiceEvent, ImportInvoiceState> {
  final IImportInvoiceRepository repo;
  ImportInvoiceBloc(this.repo) : super(const ImportInvoiceState.init()) {
    on<ImportInvoiceEvent>(_onEvent);
  }

  void _onEvent(ImportInvoiceEvent event, Emitter emitter) async {
    await event.when(
      get: (query) async => await _get(query, emitter),
      create: (request) async => await _create(request, emitter),
    );
  }

  Future _get(InvoiceQuery query, Emitter emitter) async {
    emitter(const ImportInvoiceState.loading());
    (await repo.get(query)).on(
      whenSuccess: (data) =>
          emitter(ImportInvoiceState.getSuccess(query: query, pagedList: data)),
      whenFaild: (msg) => emitter(ImportInvoiceState.failure(msg)),
    );
  }

  Future _create(ImportInvoiceRequest request, Emitter emitter) async {
    emitter(const ImportInvoiceState.loading());
    (await repo.create(request)).on(
      whenSuccess: (data) =>
          emitter(ImportInvoiceState.success(CreateScreen().getMessage())),
      whenFaild: (msg) => emitter(ImportInvoiceState.failure(msg)),
    );
  }
}
