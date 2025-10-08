import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/login/data/datasource/interface/login_datasource_interface.dart';
import 'package:tech_messenger/modules/login/domain/model/login_request.dart';

part 'login_datasource_impl.g.dart';

@RestApi()
abstract class LoginDatasource implements ILoginDatasource {
  factory LoginDatasource(Dio dio, {required String baseUrl}) =
      _LoginDatasource;

  @override
  @POST('/auth/sign-in')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> tryLogin(LoginRequest request);
}
