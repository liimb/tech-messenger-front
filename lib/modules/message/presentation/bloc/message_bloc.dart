import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/message/domain/model/send_message/message_send_model.dart';
import 'package:tech_messenger/modules/message/domain/repository/message_repository_interface.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IUserRepository _userRepository;
  final IMessageRepository _messageRepository;

  MessageBloc({
    required IUserRepository userRepository,
    required IMessageRepository messageRepository,
  }) : _userRepository = userRepository,
       _messageRepository = messageRepository,
       super(const MessageState(myNickname: null, lastSendSuccess: null)) {
    on<MessageCreateEvent>(_onCreate);
    on<MessageSendEvent>(_onSendMessage);
  }

  Future<void> _onCreate(
    MessageCreateEvent event,
    Emitter<MessageState> emit,
  ) async {
    try {
      final userData = await _userRepository.getCachedUser();
      emit(state.copyWith(myNickname: userData?.nickname));
    } catch (_) {
      emit(state.copyWith(myNickname: null));
    }
  }

  Future<void> _onSendMessage(
    MessageSendEvent event,
    Emitter<MessageState> emit,
  ) async {
    try {
      final response = await _messageRepository.sendMessage(event.sendModel);

      final success = response.response.statusCode == 200;
      emit(state.copyWith(lastSendSuccess: success));
    } catch (_) {
      emit(state.copyWith(lastSendSuccess: false));
    }
  }
}
