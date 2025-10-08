import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/registration/domain/model/registration_request.dart';

abstract interface class IRegistrationDatasource {
  Future<HttpResponse> register(RegistrationRequest request);
}
