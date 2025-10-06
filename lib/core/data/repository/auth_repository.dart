import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/core/data/model/api_models.dart';

part 'auth_repository.g.dart';

@RestApi(baseUrl: 'https://tech_messenger.com/api') // Замените на реальный URL
abstract class AuthRepository {
  factory AuthRepository(Dio dio, {String baseUrl}) = _AuthRepository;

  @POST('/check-nickname')
  Future<CheckNicknameResponse> checkNicknameExists(
    @Body() Map<String, String> body,
  );

  @POST('/register')
  Future<RegisterResponse> registerUser(@Body() Map<String, String> body);
}
