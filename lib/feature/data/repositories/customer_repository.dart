import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/customer/customer_request.dart';
import 'package:mercury/feature/domain/repositories/i_customer.dart';

class CustomerRepository extends ICustomerRepository {
  @override
  Future<DataRespone> create(CustomerRequest request) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.POST,
        payload: Payload.json(request.toJson()),
        endPoint: AppRepositoryPath.createCustomer,
      ),
      parser: (data) {},
    );
  }
}
