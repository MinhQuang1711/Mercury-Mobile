// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$VoucherImplToJson(_$VoucherImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'discountType': _$DiscountTypeEnumMap[instance.discountType],
      'percentValue': instance.percentValue,
      'discountValue': instance.discountValue,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.PERCENT: 'PERCENT',
  DiscountType.VALUE: 'VALUE',
};
