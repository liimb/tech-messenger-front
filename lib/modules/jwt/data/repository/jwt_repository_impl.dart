import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/jwt/data/datasource/impl/jwt_datasource_impl.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';
import 'package:tech_messenger/modules/jwt/domain/repository/jwt_repository_interface.dart';

class JwtRepository implements IJwtRepository {
  JwtRepository({required this.ds});

  final JwtDatasource ds;

  @override
  Future<HttpResponse> refresh(JwtRefreshRequest request) {
    return ds.refresh(request);
  }
}
