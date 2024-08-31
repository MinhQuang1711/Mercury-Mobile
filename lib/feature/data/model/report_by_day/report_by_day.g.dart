// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_by_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportByDayImpl _$$ReportByDayImplFromJson(Map<String, dynamic> json) =>
    _$ReportByDayImpl(
      quantity: json['quantity'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      revenue: (json['revenue'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      shippingFee: (json['shippingFee'] as num?)?.toDouble(),
      importPrice: (json['importPrice'] as num?)?.toDouble(),
    );
