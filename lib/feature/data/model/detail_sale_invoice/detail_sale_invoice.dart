// To parse this JSON data, do
//
//     final detailSaleInvoice = detailSaleInvoiceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/product/product.dart';

part 'detail_sale_invoice.freezed.dart';
part 'detail_sale_invoice.g.dart';

@Freezed(fromJson: true, toJson: false)
class DetailSaleInvoice with _$DetailSaleInvoice {
  const factory DetailSaleInvoice({
    String? id,
    int? quantity,
    Product? product,
    String? productId,
    String? saleInvoiceId,
  }) = _DetailSaleInvoice;

  factory DetailSaleInvoice.fromJson(Map<String, dynamic> json) =>
      _$DetailSaleInvoiceFromJson(json);
}
