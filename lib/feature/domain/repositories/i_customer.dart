import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/domain/model/customer/customer_request.dart';

abstract class ICustomerRepository extends UseCaseNetwork {
  Future<DataRespone> create(CustomerRequest request);
}
