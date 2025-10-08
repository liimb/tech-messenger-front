import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/login/domain/model/login_request.dart';

abstract interface class ILoginDatasource {
  Future<HttpResponse> tryLogin(LoginRequest request);
}
