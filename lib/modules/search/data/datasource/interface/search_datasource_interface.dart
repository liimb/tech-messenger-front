import 'package:retrofit/retrofit.dart';

abstract interface class ISearchDatasource {
  Future<HttpResponse> searchUsers(String name);
}
