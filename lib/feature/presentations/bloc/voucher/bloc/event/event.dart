import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/model/voucher/voucher.dart';

part 'event.freezed.dart';

@freezed
class VoucherEvent with _$VoucherEvent {
  const factory VoucherEvent.get(SearchByName searchByName) = _Get;
  const factory VoucherEvent.create(Voucher dto) = _Create;
}
