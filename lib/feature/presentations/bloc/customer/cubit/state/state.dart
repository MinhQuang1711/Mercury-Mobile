import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/model/customer/customer_request.dart';

part 'state.freezed.dart';

@freezed
class CommonCustomerState with _$CommonCustomerState {
  const factory CommonCustomerState(CustomerRequest request) = _State;
}
