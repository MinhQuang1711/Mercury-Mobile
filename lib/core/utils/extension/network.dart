import 'package:mercury/core/network/response/data_response.dart';

import '../../network/response/failure_response.dart';
import '../../network/response/successful_response.dart';

extension ResponseEx<T> on DataRespone<T>{
  bool get isSuccess => this is SuccessfulResponse<T>;
  T on({
    required Function(T data) whenSuccess,
    required Function(String message) whenFaild,
  }) {
    if (isSuccess) {
      return whenSuccess.call((this as SuccessfulResponse<T>).data);
    }
    return whenFaild.call((this as FailureResponse<T>).message);
  }
}