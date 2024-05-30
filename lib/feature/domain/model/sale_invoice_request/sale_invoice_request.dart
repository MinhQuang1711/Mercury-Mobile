import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';

import '../combo_box/combo_box.dart';

part 'sale_invoice_request.freezed.dart';
part 'sale_invoice_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class SaleInvoiceRequest with _$SaleInvoiceRequest {
  const factory SaleInvoiceRequest({
    double? discount,
    Voucher? voucher,
    String? customerId,
    @Default(0) int? paymentType,
    @Default([]) List<ComboBox>? detailSaleInvoice,
  }) = _SaleInvoiceRequest;
}
