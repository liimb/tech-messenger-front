import 'package:tech_messenger/modules/message/domain/model/message_model.dart';

abstract interface class IMessageRepository {
  Stream<MessageModel> watchMessages(String chatId);

  void requestHistory(String chatId, String jwtToken);

  void sendMessage(String chatId, MessageModel message, {String? jwtToken});

  Future<void> dispose();
}
