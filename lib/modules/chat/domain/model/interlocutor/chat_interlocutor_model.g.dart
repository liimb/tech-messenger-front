// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_interlocutor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatInterlocutorModel _$ChatInterlocutorModelFromJson(
  Map<String, dynamic> json,
) => _ChatInterlocutorModel(
  nickname: json['nickname'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$ChatInterlocutorModelToJson(
  _ChatInterlocutorModel instance,
) => <String, dynamic>{
  'nickname': instance.nickname,
  'name': instance.name,
  'avatar': instance.avatar,
};
