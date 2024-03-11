// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@Freezed(fromJson: true, toJson: false)
class Token with _$Token {
  const factory Token({
    String? accessToken,
    String? refreshToken,
  }) = _TOKEN;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}
