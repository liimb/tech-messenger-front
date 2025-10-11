import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/auth/data/datasource/impl/auth_datasource_impl.dart';
import 'package:tech_messenger/modules/auth/domain/repository/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required this.ds});

  final AuthDatasource ds;

  @override
  Future<HttpResponse> logout() {
    return ds.logout();
  }
}
