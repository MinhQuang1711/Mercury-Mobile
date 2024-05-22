// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combo_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComboBoxImpl _$$ComboBoxImplFromJson(Map<String, dynamic> json) =>
    _$ComboBoxImpl(
      name: json['name'] as String?,
      id: json['id'] as String?,
      value: (json['value'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$ComboBoxImplToJson(_$ComboBoxImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'value': instance.value,
      'price': instance.price,
      'quantity': instance.quantity,
    };
