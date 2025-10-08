import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/registration/data/datasource/interface/registration_datasource_interface.dart';
import 'package:tech_messenger/modules/registration/domain/model/registration_request.dart';
import 'package:tech_messenger/modules/registration/domain/repository/registration_repository_interface.dart';

class RegistrationRepository implements IRegistrationRepository {
  const RegistrationRepository({required this.ds});

  final IRegistrationDatasource ds;

  @override
  Future<HttpResponse> register(RegistrationRequest request) {
    return ds.register(request);
  }
}
