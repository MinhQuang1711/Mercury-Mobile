// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_import_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailImportInvoiceImpl _$$DetailImportInvoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailImportInvoiceImpl(
      ingredientId: json['ingredientId'] as String?,
      importInvoiceId: json['importInvoiceId'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      ingredient: json['ingredient'] == null
          ? null
          : Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );
