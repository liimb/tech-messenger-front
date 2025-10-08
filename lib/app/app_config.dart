import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';

class AppConfig {
  const AppConfig({
    required this.apiUrl,
    required this.dio,
    required this.secureStorage,
  });

  final String apiUrl;
  final Dio dio;
  final SecureStorage secureStorage;

  static Future<AppConfig> config() async {
    try {
      final apiUrl = dotenv.env['API_URL'];
      if (apiUrl == null || apiUrl.isEmpty) {
        throw Exception('API_URL не найден в .env файле');
      }
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(milliseconds: 15000),
          receiveTimeout: const Duration(milliseconds: 10000),
          validateStatus: (_) => true,
          headers: {"Content-Type": "application/json"},
        ),
      );

      final secureStorage = SecureStorage(
        storage: const FlutterSecureStorage(),
      );

      // JWT
      // final jwtDataSource = JwtDataSource(dio, baseUrl: apiUrl);
      // final jwtRepository = JwtRepository(
      //   ds: jwtDataSource,
      //   secureStorage: secureStorage,
      // );

      // dio.interceptors.add(
      //   JwtDioInterceptor(
      //     storage: secureStorage,
      //     repository: jwtRepository,
      //     authBloc: authBloc,
      //   ),
      // );

      return AppConfig(apiUrl: apiUrl, dio: dio, secureStorage: secureStorage);
    } catch (e, st) {
      throw Exception('Ошибка инициализации конфигурации: $e\n$st');
    }
  }
}
