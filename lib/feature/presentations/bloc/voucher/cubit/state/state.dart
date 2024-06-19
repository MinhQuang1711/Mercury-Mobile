import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/model/voucher/voucher.dart';

part 'state.freezed.dart';

@freezed
class CommonVoucherState with _$CommonVoucherState {
  const factory CommonVoucherState(Voucher voucher) = _State;
}
