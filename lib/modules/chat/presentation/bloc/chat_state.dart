part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatInitialState;
  const factory ChatState.loading() = ChatLoadingState;
  const factory ChatState.loaded({required List<ChatModel> chats}) =
      ChatLoadedState;
  const factory ChatState.failure({required String message}) = ChatFailureState;
}
