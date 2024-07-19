// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/user/user.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@Freezed(fromJson: true, toJson: true)
class Token with _$Token {
  const factory Token({
    @JsonKey(name: "entity") final User? user,
    final String? accessToken,
    final String? refreshToken,
  }) = _TOKEN;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}
