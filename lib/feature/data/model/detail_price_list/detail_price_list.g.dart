// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_price_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPriceListImpl _$$DetailPriceListImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPriceListImpl(
      productId: json['productId'] as String?,
      priceListId: json['priceListId'] as String?,
      salePrice: json['salePrice'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );
