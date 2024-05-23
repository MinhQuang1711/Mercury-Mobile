// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_request.freezed.dart';
part 'invoice_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class InvoiceRequest with _$InvoiceRequest {
  const factory InvoiceRequest({
    String? id,
    int? pageSize,
    int? pageNumber,
    @JsonKey(toJson: dateTimeToJson) DateTime? endTime,
    @JsonKey(toJson: dateTimeToJson) DateTime? startTime,
  }) = _InvoiceRequest;
}

String? dateTimeToJson(DateTime? date) => date?.toUtc().toIso8601String();
