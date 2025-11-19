import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  const factory ChatModel({
    @JsonKey(name: "chatId") required String id,
    @JsonKey(name: "name") @Default('Без имени') String name,
    @JsonKey(name: "lastMessage") String? lastMessage,
    @JsonKey(name: "lastMessageTime")
    @DateTimeNullableConverter()
    DateTime? lastMessageTime,
    @JsonKey(name: "messages")
    @Default(<MessageModel>[])
    List<MessageModel> messages,
    @JsonKey(name: "user") UserModel? user,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

class DateTimeNullableConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeNullableConverter();
  @override
  DateTime? fromJson(String? json) =>
      json == null ? null : DateTime.parse(json);
  @override
  String? toJson(DateTime? object) => object?.toIso8601String();
}
