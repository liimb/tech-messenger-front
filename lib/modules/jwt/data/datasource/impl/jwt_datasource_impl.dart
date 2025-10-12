import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/jwt/data/datasource/interface/jwt_datasource_interface.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';

part 'jwt_datasource_impl.g.dart';

@RestApi()
abstract class JwtDatasource implements IJwtDatasource {
  factory JwtDatasource(Dio dio, {required String baseUrl}) = _JwtDatasource;

  @override
  @POST('/auth/refresh')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> refresh(@Body() JwtRefreshRequest request);
}
