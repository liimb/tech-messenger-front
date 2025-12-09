import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/message/data/datasource/interface/message_datasource_interface.dart';
import 'package:tech_messenger/modules/message/domain/model/send_message/message_send_model.dart';

part 'message_datasource_impl.g.dart';

@RestApi()
abstract class MessageDatasource implements IMessageDatasource {
  factory MessageDatasource(Dio dio, {required String baseUrl}) =
      _MessageDatasource;

  @override
  @POST('/send-message')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> sendMessage(@Body() MessageSendModel sendModel);
}
