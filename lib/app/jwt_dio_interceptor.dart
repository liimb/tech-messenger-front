import 'dart:async';
import 'package:dio/dio.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/util/auth_checker_util.dart';
import 'package:tech_messenger/core/util/network_util.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/auth/domain/repository/auth_repository_interface.dart';

class JwtDioInterceptor extends Interceptor {
  JwtDioInterceptor({
    required this.storage,
    required this.authRepository,
    required this.authBloc,
    required this.authChecker,
  });

  final SecureStorage storage;
  final IAuthRepository authRepository;
  final AuthBloc authBloc;
  final AuthChecker authChecker;
  final _internalDio = Dio();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final requiresAuth = options.extra['requiresAuth'] == true;

    if (requiresAuth) {
      final token = await storage.getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer ${token.accessToken}';
        AppLogger.debug(
          'JWT Interceptor: Added token to request ${options.path}',
        );
        handler.next(options);
      } else {
        AppLogger.warning(
          'JWT Interceptor: No token found for authenticated request ${options.path}, logging out',
        );
        authBloc.add(const AuthEvent.logout(true));
        handler.reject(
          DioException(
            requestOptions: options,
            error: 'No token in storage, logout triggered',
          ),
        );
      }
    } else {
      handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final isUnauthorized = err.response?.statusCode == 401;
    final requiresAuth = err.requestOptions.extra['requiresAuth'] == true;
    final isRetry = err.requestOptions.extra['isRetry'] == true;
    final isNetworkError = NetworkUtil.isNetworkError(err);
    final isServerError = NetworkUtil.isServerError(err);

    AppLogger.error(
      'JWT Interceptor: Error for ${err.requestOptions.path} - ${err.type}',
      err,
      err.stackTrace,
    );

    if (isNetworkError || isServerError) {
      AppLogger.warning(
        'JWT Interceptor: Network/Server error, skipping token refresh',
      );
      handler.next(err);
      return;
    }

    if (isUnauthorized && requiresAuth && !isRetry) {
      AppLogger.info(
        'JWT Interceptor: Token expired for ${err.requestOptions.path}, attempting refresh',
      );

      final success = await authChecker.checkAuth();
      if (success) {
        AppLogger.info(
          'JWT Interceptor: Token refreshed successfully, retrying request',
        );
        final cloned = await _retryRequest(err.requestOptions);
        return handler.resolve(cloned);
      } else {
        AppLogger.error(
          'JWT Interceptor: Token refresh failed, triggering logout',
        );
        authBloc.add(const AuthEvent.logout(true));
        handler.next(err);
        return;
      }
    } else if (isUnauthorized && isRetry) {
      AppLogger.error(
        'JWT Interceptor: Retry request also failed with 401, triggering logout',
      );
      authBloc.add(const AuthEvent.logout(true));
    }

    handler.next(err);
  }

  Future<Response<dynamic>> _retryRequest(RequestOptions original) async {
    try {
      final newToken = await storage.getToken();
      if (newToken == null) {
        throw Exception('No token available after refresh');
      }

      final newOptions = Options(
        method: original.method,
        headers: Map<String, dynamic>.from(original.headers)
          ..['Authorization'] = 'Bearer ${newToken.accessToken}',
        extra: {...original.extra, 'isRetry': true},
        responseType: original.responseType,
        contentType: original.contentType,
        followRedirects: original.followRedirects,
        validateStatus: original.validateStatus,
        receiveDataWhenStatusError: original.receiveDataWhenStatusError,
      );

      AppLogger.debug('JWT Interceptor: Retrying request ${original.path}');

      return await _internalDio.request(
        original.path,
        data: original.data,
        queryParameters: original.queryParameters,
        options: newOptions,
      );
    } catch (e, st) {
      AppLogger.error('JWT Interceptor: Retry request failed', e, st);
      rethrow;
    }
  }
}
