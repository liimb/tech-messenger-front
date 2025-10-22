import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/user/data/datasource/interface/user_datasource_interface.dart';

part 'user_datasource_impl.g.dart';

@RestApi()
abstract class UserDatasource implements IUserDatasource {
  factory UserDatasource(Dio dio, {required String baseUrl}) = _UserDatasource;

  @override
  @GET('/user/info')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> fetchUser();
}
