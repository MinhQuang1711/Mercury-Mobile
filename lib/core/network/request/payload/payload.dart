import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart' as dio;
part 'payload.freezed.dart';

@freezed
class Payload with _$Payload {
  const factory Payload.json(Map<String, dynamic> data) = _JSON;
  const factory Payload.file(dio.FormData data) = _FILE;
}