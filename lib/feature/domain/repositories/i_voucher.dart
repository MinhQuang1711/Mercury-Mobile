import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/domain/model/voucher/voucher.dart';

abstract class IVoucherRepository extends UseCaseNetwork {
  Future<DataRespone> create(Voucher voucher);
}
