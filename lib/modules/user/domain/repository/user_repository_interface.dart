import 'package:retrofit/retrofit.dart';

abstract interface class IUserRepository {
  Future<HttpResponse> fetchUser();
}
