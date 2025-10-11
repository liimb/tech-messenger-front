import 'package:retrofit/retrofit.dart';

abstract interface class IAuthRepository {
  Future<HttpResponse> logout();
}
