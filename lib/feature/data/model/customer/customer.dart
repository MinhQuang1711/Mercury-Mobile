import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@Freezed(fromJson: true, toJson: false)
class Customer with _$Customer {
  const factory Customer({
    double? score,
    String? fullName,
    String? phoneNumber,
  }) = _Customer;

  factory Customer.fromJson(Map<String, Object?> json) =>
      _$CustomerFromJson(json);
}
