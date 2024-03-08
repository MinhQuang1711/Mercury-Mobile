import 'data_response.dart';

class SuccessfulResponse<T> extends DataRespone<T> {
  final T data;
  SuccessfulResponse(this.data) : super(dataModel: data);
}