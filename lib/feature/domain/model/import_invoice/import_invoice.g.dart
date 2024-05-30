// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImportInvoiceImpl _$$ImportInvoiceImplFromJson(Map<String, dynamic> json) =>
    _$ImportInvoiceImpl(
      description: json['description'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      createdByName: json['createdByName'] as String?,
      ownerName: json['ownerName'] as String?,
      id: json['id'] as String?,
    );
