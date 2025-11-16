import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tech_messenger/core/network/jwt_dio_interceptor.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/core/util/auth_checker_util.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/auth/data/datasource/impl/auth_datasource_impl.dart';
import 'package:tech_messenger/modules/auth/data/repository/auth_repository_impl.dart';
import 'package:tech_messenger/modules/jwt/data/datasource/impl/jwt_datasource_impl.dart';
import 'package:tech_messenger/modules/jwt/data/repository/jwt_repository_impl.dart';
import 'package:tech_messenger/modules/settings/settings_service.dart';
import 'package:tech_messenger/core/common/user_local_storage/user_local_storage.dart';

class AppConfig {
  const AppConfig({
    required this.baseUrl,
    required this.stompService,
    required this.dio,
    required this.secureStorage,
    required this.authBloc,
    required this.settingsService,
    required this.userLocalStorage,
  });

  final String baseUrl;
  final StompService stompService;
  final Dio dio;
  final SecureStorage secureStorage;
  final AuthBloc authBloc;
  final SettingsService settingsService;
  final UserLocalStorage userLocalStorage;

  static Future<AppConfig> config() async {
    try {
      final baseUrl = dotenv.env['BASE_URL'];
      final webSocketUrl = dotenv.env['API_STOMP_URL'];

      if (baseUrl == null || baseUrl.isEmpty) {
        throw Exception('BASE_URL не найден в .env файле');
      }

      if (webSocketUrl == null || webSocketUrl.isEmpty) {
        throw Exception('API_STOMP_URL не найден в .env файле');
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

      final userLocalStorage = UserLocalStorage();
      await userLocalStorage.init();

      // JWT
      final jwtDataSource = JwtDatasource(dio, baseUrl: baseUrl);
      final jwtRepository = JwtRepository(ds: jwtDataSource);
      final authDatasource = AuthDatasource(dio, baseUrl: baseUrl);
      final authRepository = AuthRepository(ds: authDatasource);
      final authChecker = AuthChecker(
        secureStorage: secureStorage,
        jwtRepository: jwtRepository,
      );

      final stompService = StompService(url: webSocketUrl);

      final authBloc = AuthBloc(
        authRepository: authRepository,
        secureStorage: secureStorage,
        stompService: stompService,
        userLocalStorage: userLocalStorage,
        authChecker: authChecker,
      );

      final settingsService = SettingsService();
      await settingsService.init();

      dio.interceptors.add(
        JwtDioInterceptor(
          storage: secureStorage,
          authRepository: authRepository,
          authBloc: authBloc,
          authChecker: authChecker,
        ),
      );

      return AppConfig(
        baseUrl: baseUrl,
        stompService: stompService,
        dio: dio,
        secureStorage: secureStorage,
        authBloc: authBloc,
        settingsService: settingsService,
        userLocalStorage: userLocalStorage,
      );
    } catch (e, st) {
      throw Exception('Ошибка инициализации конфигурации: $e\n$st');
    }
  }
}
