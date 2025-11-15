import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/search/data/datasource/interface/search_datasource_interface.dart';

part 'search_datasource_impl.g.dart';

@RestApi()
abstract class SearchDatasource implements ISearchDatasource {
  factory SearchDatasource(Dio dio, {required String baseUrl}) =
      _SearchDatasource;

  @override
  @GET('/user/search/{username}')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> searchUsers(@Path('username') String name);
}
