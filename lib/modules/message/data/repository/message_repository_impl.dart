import 'dart:async';
import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/message/data/datasource/impl/message_datasource_impl.dart';
import 'package:tech_messenger/modules/message/domain/model/send_message/message_send_model.dart';
import 'package:tech_messenger/modules/message/domain/repository/message_repository_interface.dart';

class MessagesRepository implements IMessageRepository {
  final MessageDatasource _ds;
  MessagesRepository({required MessageDatasource ds}) : _ds = ds;

  @override
  Future<HttpResponse> sendMessage(MessageSendModel sendModel) {
    return _ds.sendMessage(sendModel);
  }
}
