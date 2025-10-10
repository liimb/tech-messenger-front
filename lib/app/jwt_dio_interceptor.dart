import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_model.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';
import 'package:tech_messenger/modules/jwt/domain/repository/jwt_repository_interface.dart';

class JwtDioInterceptor extends Interceptor {
  JwtDioInterceptor({
    required this.storage,
    required this.repository,
    required this.authBloc,
  });

  final SecureStorage storage;
  final IJwtRepository repository;
  final AuthBloc authBloc;
  final _internalDio = Dio();

  bool _isRefreshing = false;
  final _completers = <Completer<bool>>[];

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
      } else {
        AppLogger.warning(
          'JWT Interceptor: No token found for authenticated request ${options.path}',
        );
      }
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final isUnauthorized = err.response?.statusCode == 401;
    final requiresAuth = err.requestOptions.extra['requiresAuth'] == true;
    final isRetry = err.requestOptions.extra['isRetry'] == true;
    final isNetworkError = _isNetworkError(err);
    final isServerError = _isServerError(err);

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

      final success = await _tryRefreshToken();
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
        authBloc.add(const AuthEvent.logout());
        handler.next(err);
        return;
      }
    } else if (isUnauthorized && isRetry) {
      AppLogger.error(
        'JWT Interceptor: Retry request also failed with 401, triggering logout',
      );
      authBloc.add(const AuthEvent.logout());
    }

    handler.next(err);
  }

  Future<bool> _tryRefreshToken() async {
    if (_isRefreshing) {
      AppLogger.debug(
        'JWT Interceptor: Refresh already in progress, waiting...',
      );
      final completer = Completer<bool>();
      _completers.add(completer);
      return completer.future;
    }

    _isRefreshing = true;

    try {
      final jwt = await storage.getToken();
      if (jwt == null) {
        AppLogger.warning(
          'JWT Interceptor: No JWT found in storage for refresh',
        );
        return false;
      }

      AppLogger.debug('JWT Interceptor: Attempting token refresh');
      final response = await repository
          .refresh(JwtRefreshRequest(refreshToken: jwt.refreshToken))
          .timeout(const Duration(seconds: 10));

      try {
        final newToken = JwtModel.fromJson(response.response.data);
        await storage.saveToken(newToken);
        AppLogger.info('JWT Interceptor: Token refreshed successfully');

        for (final completer in _completers) {
          completer.complete(true);
        }

        return true;
      } catch (e, st) {
        AppLogger.error(
          'JWT Interceptor: Failed to parse token from JSON',
          e,
          st,
        );
        return false;
      }
    } on TimeoutException {
      AppLogger.error('JWT Interceptor: Token refresh timeout');
      for (final completer in _completers) {
        completer.complete(false);
      }
      return false;
    } catch (e, st) {
      AppLogger.error('JWT Interceptor: Token refresh failed', e, st);
      for (final completer in _completers) {
        completer.complete(false);
      }
      return false;
    } finally {
      _isRefreshing = false;
      _completers.clear();
    }
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

  bool _isNetworkError(DioException err) {
    return err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        (err.error is SocketException) ||
        (err.message?.contains('Network is unreachable') == true) ||
        (err.message?.contains('Connection refused') == true) ||
        (err.message?.contains('Failed host lookup') == true);
  }

  bool _isServerError(DioException err) {
    final statusCode = err.response?.statusCode;
    return statusCode != null && statusCode >= 500 && statusCode < 600;
  }
}
