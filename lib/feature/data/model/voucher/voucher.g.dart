// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherImpl _$$VoucherImplFromJson(Map<String, dynamic> json) =>
    _$VoucherImpl(
      name: json['name'] as String?,
      discountType: json['discountType'] as int?,
      discountValue: (json['discountValue'] as num?)?.toDouble(),
      percentValue: (json['percentValue'] as num?)?.toDouble(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      createdByName: json['createdByName'] as String?,
      ownerName: json['ownerName'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VoucherImplToJson(_$VoucherImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discountType': instance.discountType,
      'discountValue': instance.discountValue,
      'percentValue': instance.percentValue,
      'createDate': instance.createDate?.toIso8601String(),
      'createdByName': instance.createdByName,
      'ownerName': instance.ownerName,
      'id': instance.id,
    };
