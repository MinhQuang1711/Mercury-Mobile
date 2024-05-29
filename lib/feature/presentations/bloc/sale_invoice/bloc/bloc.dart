import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/domain/repositories/i_sale_invoice.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class SaleInvoiceBloc extends Bloc<SaleInvoiceEvent, SaleInvoiceState> {
  final ISaleInvoiceRepository repo;
  SaleInvoiceBloc(this.repo) : super(const SaleInvoiceState.init()) {
    on<SaleInvoiceEvent>(_onEvent);
  }

  void _onEvent(SaleInvoiceEvent event, Emitter emitter) async {
    await event.when(
      delete: (id) async => await _delete(id, emitter),
      get: (query) async => _get(query, emitter),
      create: (request) async => _create(request, emitter),
    );
  }

  Future _create(SaleInvoiceRequest request, Emitter emitter) async {
    emitter(const SaleInvoiceState.loading());
    (await repo.create(request)).on(
      whenSuccess: (data) =>
          emitter(SaleInvoiceState.created(CreateScreen().getMessage())),
      whenFaild: (msg) => emitter(SaleInvoiceState.failure(msg)),
    );
  }

  Future _delete(String id, Emitter emitter) async {
    // TODO
  }

  Future _get(InvoiceQuery query, Emitter emitter) async {
    emitter(const SaleInvoiceState.loading());
    (await repo.get(query)).on(
      whenSuccess: (data) =>
          emitter(SaleInvoiceState.got(query: query, pagedList: data)),
      whenFaild: (msg) => emitter(SaleInvoiceState.failure(msg)),
    );
  }
}
