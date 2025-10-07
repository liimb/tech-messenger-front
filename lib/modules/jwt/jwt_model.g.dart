// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtModelImpl _$$JwtModelImplFromJson(Map<String, dynamic> json) =>
    _$JwtModelImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$JwtModelImplToJson(_$JwtModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
