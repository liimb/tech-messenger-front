import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/login/data/datasource/interface/login_datasource_interface.dart';
import 'package:tech_messenger/modules/login/domain/model/login_request.dart';
import 'package:tech_messenger/modules/login/domain/repository/login_repository_interface.dart';

class LoginRepository implements ILoginRepository {
  const LoginRepository({required this.ds});

  final ILoginDatasource ds;

  @override
  Future<HttpResponse> tryLogin(LoginRequest request) {
    return ds.tryLogin(request);
  }
}
