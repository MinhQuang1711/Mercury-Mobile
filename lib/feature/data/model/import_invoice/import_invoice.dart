import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/detail_import_invoice/detail_import_invoice.dart';

part 'import_invoice.freezed.dart';
part 'import_invoice.g.dart';

@Freezed(toJson: false, fromJson: true)
class ImportInvoice with _$ImportInvoice {
  const factory ImportInvoice({
    String? description,
    double? totalPrice,
    DateTime? createDate,
    String? createdByName,
    String? ownerName,
    List<DetailImportInvoice>? detailImportInvoices,
    String? id,
  }) = _ImportInvoice;

  factory ImportInvoice.fromJson(Map<String, dynamic> json) =>
      _$ImportInvoiceFromJson(json);
}
