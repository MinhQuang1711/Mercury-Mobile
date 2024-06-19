import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/repositories/i_voucher.dart';

class VoucherRepository extends IVoucherRepository {
  @override
  Future<DataRespone> create(Voucher voucher) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.POST,
        payload: Payload.json(voucher.toJson()),
        endPoint: AppRepositoryPath.createVoucher,
      ),
      parser: (data) {},
    );
  }
}
