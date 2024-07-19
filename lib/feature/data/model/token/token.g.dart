// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TOKENImpl _$$TOKENImplFromJson(Map<String, dynamic> json) => _$TOKENImpl(
      user: json['entity'] == null
          ? null
          : User.fromJson(json['entity'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$TOKENImplToJson(_$TOKENImpl instance) =>
    <String, dynamic>{
      'entity': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
