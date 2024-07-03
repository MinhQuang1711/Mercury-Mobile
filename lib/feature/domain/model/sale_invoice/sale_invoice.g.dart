// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleInvoiceImpl _$$SaleInvoiceImplFromJson(Map<String, dynamic> json) =>
    _$SaleInvoiceImpl(
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      dicount: (json['dicount'] as num?)?.toDouble(),
      voucherId: json['voucherId'] as String?,
      customerId: json['customerId'] as String?,
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      createdByName: json['createdByName'] as String?,
      ownerName: json['ownerName'] as String?,
      id: json['id'] as String?,
      shippingFee: (json['shippingFee'] as num?)?.toDouble(),
      detailSaleInvoices: (json['detailSaleInvoices'] as List<dynamic>?)
          ?.map((e) => DetailSaleInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );
