import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/customer/customer.dart';

part 'sale_invoice.freezed.dart';
part 'sale_invoice.g.dart';

@Freezed(fromJson: true, toJson: false)
class SaleInvoice with _$SaleInvoice {
  const factory SaleInvoice({
    double? totalPrice,
    double? dicount,
    String? voucherId,
    String? customerId,
    DateTime? createDate,
    String? createdByName,
    String? ownerName,
    String? id,
    Customer? customer,
  }) = _SaleInvoice;

  factory SaleInvoice.fromJson(Map<String, dynamic> json) =>
      _$SaleInvoiceFromJson(json);
}
