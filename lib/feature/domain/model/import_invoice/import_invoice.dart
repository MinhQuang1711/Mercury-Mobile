import 'package:freezed_annotation/freezed_annotation.dart';

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
    String? id,
  }) = _ImportInvoice;

  factory ImportInvoice.fromJson(Map<String, dynamic> json) =>
      _$ImportInvoiceFromJson(json);
}
