// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      id: json['id'] as String,
      text: json['text'] as String,
      sendTime: DateTime.parse(json['sendtime'] as String),
      author: UserModel.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'sendtime': instance.sendTime.toIso8601String(),
      'author': instance.author,
    };
