import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/user/data/datasource/impl/user_datasource_impl.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

class UserRepository implements IUserRepository {
  UserRepository({required UserDatasource ds}) : _ds = ds;

  final UserDatasource _ds;

  @override
  Future<HttpResponse> fetchUser() {
    return _ds.fetchUser();
  }
}
