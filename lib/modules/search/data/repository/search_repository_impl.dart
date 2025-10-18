import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/search/data/datasource/interface/search_datasource_interface.dart';
import 'package:tech_messenger/modules/search/domain/repository/search_repository_interface.dart';

class SearchRepository implements ISearchRepository {
  SearchRepository({required ISearchDatasource ds}) : _ds = ds;
  final ISearchDatasource _ds;

  @override
  Future<HttpResponse> searchUsers(String name) {
    return _ds.searchUsers(name);
  }
}
