import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/enum/permission.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(fromJson: true, toJson: true)
class User with _$User {
  const factory User({
    String? id,
    String? email,
    String? userName,
    String? fullName,
    String? phoneNumber,
    List<Permission>? permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
