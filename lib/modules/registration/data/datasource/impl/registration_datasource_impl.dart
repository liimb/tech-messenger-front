import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/registration/data/datasource/interface/registration_datasource_interface.dart';
import 'package:tech_messenger/modules/registration/domain/model/registration_request.dart';

part 'registration_datasource_impl.g.dart';

@RestApi()
abstract class RegistrationDatasource implements IRegistrationDatasource {
  factory RegistrationDatasource(Dio dio, {required String baseUrl}) =
      _RegistrationDatasource;

  @override
  @POST('/auth/sign-up')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> register(RegistrationRequest request);
}
