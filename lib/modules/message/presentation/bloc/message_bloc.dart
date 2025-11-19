import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final MessageModel messageData;
  final IUserRepository _userRepository;

  MessageBloc({
    required this.messageData,
    required IUserRepository userRepository,
  }) : _userRepository = userRepository,
       super(MessageState(isMine: false)) {
    on<CreateEvent>((event, emit) async {
      final userData = await _userRepository.getCachedUser();
      final isMine = messageData.senderName == userData?.nickname;

      emit(MessageState(isMine: isMine));
    });
    add(const MessageEvent.create());
  }
}
