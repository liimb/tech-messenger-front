import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/user/data/datasource/impl/user_datasource_impl.dart';
import 'package:tech_messenger/core/common/user_local_storage/user_local_storage.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

class UserRepository implements IUserRepository {
  final UserDatasource _ds;
  final UserLocalStorage _local;

  UserRepository({
    required UserDatasource ds,
    required UserLocalStorage localStorage,
  }) : _ds = ds,
       _local = localStorage;

  @override
  Future<HttpResponse> fetchUser() async {
    final cachedUser = await _local.getUser();
    if (cachedUser != null) {
      final fakeResponse = Response(
        requestOptions: RequestOptions(path: '/user/info'),
        statusCode: 200,
        data: cachedUser.toJson(),
      );
      print(
        'RAW RESPONSE from local: ${cachedUser.name} ${cachedUser.nickname}',
      );
      return HttpResponse(cachedUser.toJson(), fakeResponse);
    } else {
      try {
        final response = await _ds.fetchUser();

        final data = response.data;
        print('RAW RESPONSE from fetchUser: ${response.data}');
        final user = UserModel.fromJson(data);
        await _local.saveUser(user);
        return HttpResponse(user.toJson(), response.response);
      } catch (e) {
        rethrow;
      }
    }
  }

  @override
  Future<UserModel?> getCachedUser() async {
    final userData = await _local.getUser();
    return userData;
  }
}
