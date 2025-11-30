import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/message/domain/model/send_message/message_send_model.dart';

abstract interface class IMessageDatasource {
  Future<HttpResponse> sendMessage(MessageSendModel sendmodel);
}
