import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  const factory ChatModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "messages") required List<MessageModel> messages,
    @JsonKey(name: "user") required UserModel user,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
