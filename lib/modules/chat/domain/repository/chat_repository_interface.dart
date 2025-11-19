import 'package:tech_messenger/modules/chat/domain/model/chat_model.dart';

abstract interface class IChatRepository {
  Stream<List<ChatModel>> watchChats(String userId);
  void requestChats(String jwtToken);
  Future<void> dispose();
}
