import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_send_model.freezed.dart';
part 'message_send_model.g.dart';

@freezed
sealed class MessageSendModel with _$MessageSendModel {
  const factory MessageSendModel({
    @JsonKey(name: 'chatId') required String chatId,

    @JsonKey(name: 'senderName') required String senderName,

    @JsonKey(name: 'messageText') required String messageText,
  }) = _MessageSendModel;

  factory MessageSendModel.fromJson(Map<String, dynamic> json) =>
      _$MessageSendModelFromJson(json);
}
