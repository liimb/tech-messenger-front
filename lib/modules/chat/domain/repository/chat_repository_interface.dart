import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';

abstract interface class IChatRepository {
  Stream<List<ChatModel>> watchChats(String userId);
  void requestChats(String jwtToken);
  Future<void> dispose();
  Future<HttpResponse> createChat(ChatCreateModel chatCreate);
}
