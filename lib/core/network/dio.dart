import 'package:dio/dio.dart';

import '../../config/server.dart';
import 'interceptor.dart';
import 'request/param_payload.dart';

class DioClient {
  late final Dio dio;
  var defaultTimeOut = const Duration(minutes: 1);

  DioClient({String? otherServerUrl}) {
    // Default option of request
    final options = BaseOptions(
      sendTimeout: defaultTimeOut,
      receiveTimeout: defaultTimeOut,
      connectTimeout: defaultTimeOut,
      baseUrl: otherServerUrl ?? AppConfig.instance.serverConfig.baseUrl,
    );

    dio = Dio(options);
    dio.interceptors.add(AppInterceptor());
  }

  Future<T> makeRequest<T>({required ParamRequest paramRequest}) async {
    // Get data of payload
    final payloadData = paramRequest.payload?.when(
      json: (json) => json,
      file: (upload) => upload,
    );
    // config option
    final options = Options(
      headers: paramRequest.header,
      method: paramRequest.method.name,
      sendTimeout: paramRequest.duration,
      receiveTimeout: paramRequest.duration,
    );

    final response = await dio.request(
      data: payloadData,
      options: options,
      paramRequest.endPoint,
      queryParameters: paramRequest.query,
    );
    return response.data;
  }
}
