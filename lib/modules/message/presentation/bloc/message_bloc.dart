import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/user/data/repository/user_repository_impl.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

// class MessageBloc extends Bloc<MessageState, MessageEvent> {
//   final MessageModel messageData;

//   MessageBloc({required this.messageData}) {
//     on<CreateEvent>((event, emit) async {
//       final isMine = messageData.author == UserRepository
//     }
//     )
//   }
// }
