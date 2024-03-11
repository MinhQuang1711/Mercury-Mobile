import 'package:dio/dio.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/network/service/service.dart';
import 'package:mercury/core/utils/log.dart';

import '../../config/const/network_error_message.dart';
import '../network/dio.dart';
import '../network/request/param_payload.dart';
import '../network/response/failure_response.dart';
import '../network/response/successful_response.dart';

class UseCaseNetwork {
  Future<DataRespone<T>> excuter<T>({
    required ParamRequest paramRequest,
    required T Function(dynamic json) parser,
  }) async {
    final dioClient = DioClient();

    try {
      final json = await dioClient.makeRequest(paramRequest: paramRequest);
      return SuccessfulResponse(parser.call(json));
    } catch (exception, stackTrace) {
      logError(exception);
      logError(stackTrace);
      if (exception is DioException) {
        logError("---------->DIO ERROR<----------");
        logError(exception.response?.data);
        logError(exception.response?.statusCode);
        String errorMessage = NetworkService.handleException(exception);
        return FailureResponse<T>(errorMessage);
      }
      return FailureResponse<T>(ExceptionRequestMessage.unknow);
    }
  }
}
