import 'package:retrofit/retrofit.dart';

abstract interface class IAuthDatasource {
  Future<HttpResponse> logout();
}
