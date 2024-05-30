import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';
part 'voucher.g.dart';

@Freezed(fromJson: true, toJson: true)
class Voucher with _$Voucher {
  const factory Voucher({
    String? name,
    int? discountType,
    double? discountValue,
    double? percentValue,
    DateTime? createDate,
    String? createdByName,
    String? ownerName,
    String? id,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}
