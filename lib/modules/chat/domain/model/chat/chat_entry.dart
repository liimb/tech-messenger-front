import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entry.freezed.dart';

@freezed
class ChatEntry with _$ChatEntry {
  const factory ChatEntry.existing({required ChatModel chat}) =
      ChatEntryExisting;
  const factory ChatEntry.withUser({required UserModel user}) =
      ChatEntryWithUser;
}
