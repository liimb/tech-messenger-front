import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

abstract interface class IUserRepository {
  Future<HttpResponse> fetchUser();
  Future<UserModel?> getCachedUser();
}
