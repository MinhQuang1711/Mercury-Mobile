import 'package:dio/dio.dart';

import '../../../config/const/network_error_message.dart';

class NetworkService {
  static String handleException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ExceptionRequestMessage.connectionTimeout;
      case DioExceptionType.sendTimeout:
        return ExceptionRequestMessage.sendTimeout;
      case DioExceptionType.connectionError:
        return ExceptionRequestMessage.connectionError;
      case DioExceptionType.badCertificate:
        return ExceptionRequestMessage.badCertificate;
      case DioExceptionType.cancel:
        return ExceptionRequestMessage.cancelToken;
      case DioExceptionType.unknown:
        return ExceptionRequestMessage.unknow;
      case DioExceptionType.badResponse:
        return handleBadResponse(exception.response);
      case DioExceptionType.receiveTimeout:
        return ExceptionRequestMessage.receiveTimeout;
    }
  }

  static String handleBadResponse(Response<dynamic>? response) {
    final statusCode = response?.statusCode ?? 500;
    if (statusCode == 401) {
      return response?.data?? ExceptionRequestMessage.noAuth;
    } else if (statusCode == 403) {
      return response?.data?? ExceptionRequestMessage.noPermission;
    } else if (statusCode == 405) {
      return response?.data?? ExceptionRequestMessage.errorMethod;
    } else if (statusCode == 404) {
      return response?.data?? ExceptionRequestMessage.notFound;
    } else if (statusCode >= 500 && statusCode <= 600) {
      return response?.data?? ExceptionRequestMessage.server;
    }
    return ExceptionRequestMessage.unknow;
  }
}