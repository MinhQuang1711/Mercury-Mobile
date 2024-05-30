import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';

part 'detail_import_invoice.freezed.dart';
part 'detail_import_invoice.g.dart';

@Freezed(toJson: false, fromJson: true)
class DetailImportInvoice with _$DetailImportInvoice {
  const factory DetailImportInvoice({
    String? ingredientId,
    String? importInvoiceId,
    double? weight,
    double? price,
    Ingredient? ingredient,
    String? id,
  }) = _DetailImportInvoice;

  factory DetailImportInvoice.fromJson(Map<String, dynamic> json) =>
      _$DetailImportInvoiceFromJson(json);
}
