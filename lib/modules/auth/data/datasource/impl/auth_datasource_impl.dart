import 'dart:async';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/auth/data/datasource/interface/auth_datasource_interface.dart';

part 'auth_datasource_impl.g.dart';

@RestApi()
abstract class AuthDatasource implements IAuthDatasource {
  factory AuthDatasource(Dio dio, {required String baseUrl}) = _AuthDatasource;

  @override
  @POST('/auth/logout')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> logout();
}
