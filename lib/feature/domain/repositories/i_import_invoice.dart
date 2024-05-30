import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/import_invoice/import_invoice.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';

import '../../../core/network/response/data_response.dart';

abstract class IImportInvoiceRepository extends UseCaseNetwork {
  Future<DataRespone<PagedList<ImportInvoice>>> get(InvoiceQuery query);
}
