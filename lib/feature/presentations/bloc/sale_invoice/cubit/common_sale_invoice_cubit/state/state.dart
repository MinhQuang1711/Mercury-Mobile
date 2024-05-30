import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';

part 'state.freezed.dart';

@freezed
class CommonSaleInvoiceState with _$CommonSaleInvoiceState {
  const factory CommonSaleInvoiceState(
    SaleInvoiceRequest request, {
    required double totalDiscount,
    required double totalPrice,
  }) = _State;
}
