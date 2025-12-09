// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_send_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageSendModel _$MessageSendModelFromJson(Map<String, dynamic> json) =>
    _MessageSendModel(
      chatId: json['chatId'] as String,
      senderName: json['senderName'] as String,
      messageText: json['messageText'] as String,
    );

Map<String, dynamic> _$MessageSendModelToJson(_MessageSendModel instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'senderName': instance.senderName,
      'messageText': instance.messageText,
    };
