import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(fromJson: true, toJson: true)
class User with _$User {
  const factory User({
    String? email,
    String? bankBin,
    String? bankCode,
    String? userName,
    String? password,
    String? fullName,
    String? avatarUrl,
    String? phoneNumber,
    String? reciverName,
    String? shortNameBank,
    String? accountBankNumber,
    DateTime? createDate,
    String? createdByName,
    String? ownerName,
    String? id,
    List<int>? permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
