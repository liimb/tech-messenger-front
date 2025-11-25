import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/chat/data/datasource/interface/chat_datasource_interface.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';

part 'chat_datasource_impl.g.dart';

@RestApi()
abstract class ChatDatasource implements IChatDatasource {
  factory ChatDatasource(Dio dio, {required String baseUrl}) = _ChatDatasource;

  @override
  @POST('/create-chat')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> createChat(@Body() ChatCreateModel chatCreate);
}
