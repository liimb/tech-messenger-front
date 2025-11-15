// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  nickname: json['nickname'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'name': instance.name,
      'avatar': instance.avatar,
      'description': instance.description,
    };
