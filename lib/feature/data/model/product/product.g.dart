// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      sumCost: (json['sumCost'] as num?)?.toDouble(),
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      imagePath: json['imagePath'] as String?,
      ownerName: json['ownerName'] as String?,
      imageByte: json['imageByte'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      detailProducts: (json['detailProducts'] as List<dynamic>?)
          ?.map((e) => DetailProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdByName: json['createdByName'] as String?,
    );
