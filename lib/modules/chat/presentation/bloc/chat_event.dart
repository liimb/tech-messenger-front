part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = ChatStartedEvent;
  const factory ChatEvent.create(ChatCreateModel chatCreate) = ChatCreateEvent;
  const factory ChatEvent.select(String chatId) = ChatSelectEvent;
  const factory ChatEvent.refresh() = ChatRefreshEvent;
  const factory ChatEvent.chatsUpdated(List<ChatModel> chats) =
      ChatsUpdatedEvent;
  const factory ChatEvent.clearSelection() = ChatClearSelectionEvent;
  const factory ChatEvent.reset() = ChatResetEvent;
}
