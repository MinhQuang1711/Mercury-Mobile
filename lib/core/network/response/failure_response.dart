import 'data_response.dart';

class FailureResponse<T> extends DataRespone<T> {
  final String message;
  FailureResponse(this.message) : super(errorMessage: message);
}