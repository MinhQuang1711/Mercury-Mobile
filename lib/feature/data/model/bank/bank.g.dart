// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankImpl _$$BankImplFromJson(Map<String, dynamic> json) => _$BankImpl(
      id: json['id'] as int?,
      bin: json['bin'] as String?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      logo: json['logo'] as String?,
      shortName: json['shortName'] as String?,
      transferSupported: json['transferSupported'] as int?,
      lookupSupported: json['lookupSupported'] as int?,
    );

Map<String, dynamic> _$$BankImplToJson(_$BankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bin': instance.bin,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
      'shortName': instance.shortName,
      'transferSupported': instance.transferSupported,
      'lookupSupported': instance.lookupSupported,
    };
