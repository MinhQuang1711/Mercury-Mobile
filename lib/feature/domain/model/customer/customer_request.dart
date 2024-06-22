import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_request.freezed.dart';
part 'customer_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class CustomerRequest with _$CustomerRequest {
  const factory CustomerRequest({
    String? id,
    String? name,
    DateTime? birthDay,
    String? phoneNumber,
    String? email,
  }) = _CustomerRequest;
}
