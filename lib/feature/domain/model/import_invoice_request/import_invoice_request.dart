import 'package:freezed_annotation/freezed_annotation.dart';

import '../combo_box/combo_box.dart';

part 'import_invoice_request.freezed.dart';
part 'import_invoice_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class ImportInvoiceRequest with _$ImportInvoiceRequest {
  const factory ImportInvoiceRequest({
    double? description,
    @Default([]) List<ComboBox>? ingredients,
  }) = _ImportInvoiceRequest;
}
