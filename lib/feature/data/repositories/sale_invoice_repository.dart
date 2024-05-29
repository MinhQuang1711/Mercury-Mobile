import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/domain/repositories/i_sale_invoice.dart';

class SaleInvoiceRepository extends ISaleInvoiceRepository {
  @override
  Future<DataRespone<PagedList<SaleInvoice>>> get(InvoiceQuery query) async {
    return await excuter(
        paramRequest: ParamRequest(
          method: Method.GET,
          query: query.toJson(),
          endPoint: AppRepositoryPath.getSaleInvoice,
        ),
        parser: (data) =>
            PagedList.fromJson(data, (e) => SaleInvoice.fromJson(e)));
  }

  @override
  Future<DataRespone> create(SaleInvoiceRequest request) async {
    return await excuter(
        paramRequest: ParamRequest(
          method: Method.POST,
          payload: Payload.json(request.toJson()),
          endPoint: AppRepositoryPath.createSaleInvoice,
        ),
        parser: (data) {});
  }
}
