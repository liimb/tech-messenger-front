// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      id: json['id'] as String?,
      senderName: json['senderName'] as String? ?? 'Неизвестно',
      messageText: json['messageText'] as String? ?? '',
      sentTime: const DateTimeConverter().fromJson(json['sentTime'] as String),
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'messageText': instance.messageText,
      'sentTime': const DateTimeConverter().toJson(instance.sentTime),
    };
