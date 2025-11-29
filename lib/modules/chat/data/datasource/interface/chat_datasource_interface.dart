import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';

abstract interface class IChatDatasource {
  Future<HttpResponse> createChat(ChatCreateModel chatCreate);
}
