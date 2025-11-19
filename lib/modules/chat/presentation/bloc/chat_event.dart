part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = ChatStartedEvent;
  const factory ChatEvent.refresh() = ChatRefreshEvent;
  const factory ChatEvent.chatsUpdated(List<ChatModel> chats) =
      ChatsUpdatedEvent;
}
