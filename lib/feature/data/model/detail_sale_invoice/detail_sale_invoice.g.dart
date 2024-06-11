// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_sale_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailSaleInvoiceImpl _$$DetailSaleInvoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailSaleInvoiceImpl(
      id: json['id'] as String?,
      quantity: json['quantity'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      productId: json['productId'] as String?,
      saleInvoiceId: json['saleInvoiceId'] as String?,
    );
