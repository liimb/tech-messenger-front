import 'package:retrofit/retrofit.dart';

abstract interface class ISearchRepository {
  Future<HttpResponse> searchUsers(String name);
}
