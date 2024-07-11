// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      email: json['email'] as String?,
      bankBin: json['bankBin'] as String?,
      bankCode: json['bankCode'] as String?,
      userName: json['userName'] as String?,
      password: json['password'] as String?,
      fullName: json['fullName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      reciverName: json['reciverName'] as String?,
      bankShortName: json['bankShortName'] as String?,
      reciverAccountNumber: json['reciverAccountNumber'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      createdByName: json['createdByName'] as String?,
      ownerName: json['ownerName'] as String?,
      id: json['id'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'bankBin': instance.bankBin,
      'bankCode': instance.bankCode,
      'userName': instance.userName,
      'password': instance.password,
      'fullName': instance.fullName,
      'avatarUrl': instance.avatarUrl,
      'phoneNumber': instance.phoneNumber,
      'reciverName': instance.reciverName,
      'bankShortName': instance.bankShortName,
      'reciverAccountNumber': instance.reciverAccountNumber,
      'createDate': instance.createDate?.toIso8601String(),
      'createdByName': instance.createdByName,
      'ownerName': instance.ownerName,
      'id': instance.id,
      'permissions': instance.permissions,
    };
