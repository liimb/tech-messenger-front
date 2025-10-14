import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/user/data/datasource/impl/user_datasource_impl.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

class UserRepository implements IUserRepository {
  UserRepository({required this.ds});

  final UserDatasource ds;

  @override
  Future<HttpResponse> fetchUser() {
    return ds.fetchUser();
  }
}
