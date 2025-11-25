// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => _ChatModel(
  id: json['chatId'] as String,
  name: json['name'] as String? ?? 'Без имени',
  lastMessage: json['lastMessage'] as String?,
  lastMessageTime: const DateTimeNullableConverter().fromJson(
    json['lastMessageTime'] as String?,
  ),
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MessageModel>[],
  interlocutors:
      (json['interlocutors'] as List<dynamic>?)
          ?.map(
            (e) => ChatInterlocutorModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ChatInterlocutorModel>[],
);

Map<String, dynamic> _$ChatModelToJson(_ChatModel instance) =>
    <String, dynamic>{
      'chatId': instance.id,
      'name': instance.name,
      'lastMessage': instance.lastMessage,
      'lastMessageTime': const DateTimeNullableConverter().toJson(
        instance.lastMessageTime,
      ),
      'messages': instance.messages,
      'interlocutors': instance.interlocutors,
    };
