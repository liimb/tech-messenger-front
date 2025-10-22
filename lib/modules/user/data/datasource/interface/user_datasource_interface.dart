import 'package:retrofit/retrofit.dart';

abstract interface class IUserDatasource {
  Future<HttpResponse> fetchUser();
}
