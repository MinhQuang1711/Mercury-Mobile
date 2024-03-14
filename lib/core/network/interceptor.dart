import 'package:dio/dio.dart';
import 'package:mercury/core/utils/singleton/token_singleton.dart';

class AppInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var token = TokenSingleton.instance.token;
    options.headers['Authorization'] = 'Bearer ${token?.accessToken}';
    return handler.next(options);
  }
}
