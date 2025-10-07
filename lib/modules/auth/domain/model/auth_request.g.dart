// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestImpl _$$AuthRequestImplFromJson(Map<String, dynamic> json) =>
    _$AuthRequestImpl(
      nickname: json['nickname'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthRequestImplToJson(_$AuthRequestImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'password': instance.password,
    };
