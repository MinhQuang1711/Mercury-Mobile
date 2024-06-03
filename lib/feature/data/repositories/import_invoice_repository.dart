import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/import_invoice_request/import_invoice_request.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';

import '../model/import_invoice/import_invoice.dart';

class ImportInvoiceRepository extends IImportInvoiceRepository {
  @override
  Future<DataRespone<PagedList<ImportInvoice>>> get(InvoiceQuery query) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        query: query.toJson(),
        endPoint: AppRepositoryPath.getImportInvoice,
      ),
      parser: (data) =>
          PagedList.fromJson(data, (e) => ImportInvoice.fromJson(e)),
    );
  }

  @override
  Future<DataRespone> create(ImportInvoiceRequest request) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.POST,
        payload: Payload.json(request.toJson()),
        endPoint: AppRepositoryPath.createImportInvoice,
      ),
      parser: (json) {},
    );
  }
}
