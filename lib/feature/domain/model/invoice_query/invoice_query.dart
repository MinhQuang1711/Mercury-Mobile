// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_query.freezed.dart';
part 'invoice_query.g.dart';

@Freezed(fromJson: false, toJson: true)
class InvoiceQuery with _$InvoiceQuery {
  const factory InvoiceQuery({
    String? id,
    int? pageSize,
    int? pageNumber,
    @JsonKey(toJson: dateTimeToJson) DateTime? endTime,
    @JsonKey(toJson: dateTimeToJson) DateTime? startTime,
  }) = _InvoiceQuery;
}

String? dateTimeToJson(DateTime? date) => date?.toUtc().toIso8601String();
