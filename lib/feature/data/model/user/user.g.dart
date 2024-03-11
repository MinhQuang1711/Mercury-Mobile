// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PermissionEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'permissions':
          instance.permissions?.map((e) => _$PermissionEnumMap[e]!).toList(),
    };

const _$PermissionEnumMap = {
  Permission.CREATE_USER: 'CREATE_USER',
  Permission.VIEW_PRODUCT: 'VIEW_PRODUCT',
  Permission.UPDATE_PRODUCT: 'UPDATE_PRODUCT',
  Permission.CREATE_PRODUCT: 'CREATE_PRODUCT',
  Permission.DELETE_PRODUCT: 'DELETE_PRODUCT',
  Permission.VIEW_INGREDIENT: 'VIEW_INGREDIENT',
  Permission.UPDATE_INGREDIENT: 'UPDATE_INGREDIENT',
  Permission.CREATE_INGREDIENT: 'CREATE_INGREDIENT',
  Permission.DELETE_INGREDIENT: 'DELETE_INGREDIENT',
  Permission.VIEW_INPUT_INVOICE: 'VIEW_INPUT_INVOICE',
  Permission.CREATE_INPUT_INVOICE: 'CREATE_INPUT_INVOICE',
  Permission.UPDATE_INPUT_INVOICE: 'UPDATE_INPUT_INVOICE',
  Permission.DELETE_INPUT_INVOICE: 'DELETE_INPUT_INVOICE',
  Permission.VIEW_SALE_BILL: 'VIEW_SALE_BILL',
  Permission.CREATE_SALE_BILL: 'CREATE_SALE_BILL',
  Permission.UPDATE_SALE_BILL: 'UPDATE_SALE_BILL',
  Permission.DELETE_SALE_BILL: 'DELETE_SALE_BILL',
  Permission.VIEW_EXPENDITURE_BILL: 'VIEW_EXPENDITURE_BILL',
  Permission.CREATE_EXPENDITURE_BILL: 'CREATE_EXPENDITURE_BILL',
  Permission.UPDATE_EXPENDITURE_BILL: 'UPDATE_EXPENDITURE_BILL',
  Permission.DELETE_EXPENDITURE_BILL: 'DELETE_EXPENDITURE_BILL',
  Permission.VIEW_INVENTORY: 'VIEW_INVENTORY',
  Permission.INVENTORY_BALANCE: 'INVENTORY_BALANCE',
  Permission.VIEW_SALE_REPORT: 'VIEW_SALE_REPORT',
  Permission.CREATE_SALE_REPORT: 'CREATE_SALE_REPORT',
  Permission.UPDATE_SALE_REPORT: 'UPDATE_SALE_REPORT',
  Permission.DELETE_SALE_REPORT: 'DELETE_SALE_REPORT',
  Permission.ADMIN: 'ADMIN',
};
