// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceListImpl _$$PriceListImplFromJson(Map<String, dynamic> json) =>
    _$PriceListImpl(
      name: json['name'] as String?,
      detailPriceList: (json['detailPriceList'] as List<dynamic>?)
          ?.map((e) => DetailPriceList.fromJson(e as Map<String, dynamic>))
          .toList(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      createdByName: json['createdByName'] as String?,
      ownerName: json['ownerName'] as String?,
      id: json['id'] as String?,
    );
