part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState({String? myNickname, bool? lastSendSuccess}) =
      _MessageState;
}
