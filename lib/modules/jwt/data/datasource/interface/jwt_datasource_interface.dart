import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';

abstract interface class IJwtDatasource {
  Future<HttpResponse> refresh(JwtRefreshRequest request);
}
