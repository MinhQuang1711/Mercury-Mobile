import '../../../feature/domain/enum/method.dart';
import 'payload/payload.dart';

class ParamRequest {
  final Method method;
  final String endPoint;
  final Payload? payload;
  final Duration? duration;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? header;

  ParamRequest({
    this.query,
    this.header,
    this.payload,
    this.duration,
    required this.method,
    required this.endPoint,
  });
}
