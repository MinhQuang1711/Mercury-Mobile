import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';

abstract class ISaleInvoiceRepository extends UseCaseNetwork {
  Future<DataRespone<PagedList<SaleInvoice>>> get(InvoiceQuery query);
  Future<DataRespone> create(SaleInvoiceRequest request);
}
