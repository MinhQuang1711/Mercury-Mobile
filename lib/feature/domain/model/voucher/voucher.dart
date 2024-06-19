// To parse this JSON data, do
//
//     final voucher = voucherFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';

part 'voucher.freezed.dart';
part 'voucher.g.dart';

@Freezed(toJson: true, fromJson: false)
class Voucher with _$Voucher {
  const factory Voucher({
    String? name,
    DiscountType? discountType,
    double? percentValue,
    double? discountValue,
  }) = _Voucher;
}
