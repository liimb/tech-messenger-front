import 'dart:async';
import 'package:dio/dio.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/util/network_util.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_model.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';
import 'package:tech_messenger/modules/jwt/domain/repository/jwt_repository_interface.dart';

class AuthChecker {
  AuthChecker({required this.secureStorage, required this.jwtRepository});

  SecureStorage secureStorage;
  IJwtRepository jwtRepository;
  bool _isRefreshing = false;
  final _completers = <Completer<bool>>[];

  Future<bool> checkAuth() async {
    try {
      final jwt = await secureStorage.getToken();
      if (jwt == null) {
        AppLogger.warning('Auth check: no token in storage');
        return false;
      }

      if (_isRefreshing) {
        AppLogger.debug('Auth check: refresh already in progress, waiting');
        final c = Completer<bool>();
        _completers.add(c);
        return c.future;
      }

      _isRefreshing = true;
      try {
        final response = await jwtRepository.refresh(
          JwtRefreshRequest(refreshToken: jwt.refreshToken),
        );

        final status = response.response?.statusCode ?? 0;

        if (status == 401 || status == 403) {
          AppLogger.warning(
            'Auth check: refresh returned $status -> unauthorized',
          );
          for (final comp in _completers) comp.complete(false);
          _completers.clear();
          return false;
        }

        try {
          final newToken = JwtModel.fromJson(response.response.data);
          await secureStorage.saveToken(newToken);
          AppLogger.info('Auth check: refresh succeeded and token saved');
        } catch (e, st) {
          AppLogger.warning(
            'Auth check: failed to parse refresh response, but treat as authorized',
            e,
            st,
          );
        }

        for (final comp in _completers) comp.complete(true);
        _completers.clear();
        return true;
      } on TimeoutException {
        AppLogger.warning('Auth check: refresh timed out -> assume authorized');
        for (final comp in _completers) comp.complete(true);
        _completers.clear();
        return true;
      } on DioException catch (e) {
        final status = e.response?.statusCode;
        if (status == 401 || status == 403) {
          AppLogger.warning(
            'Auth check: refresh DioException with status $status -> unauthorized',
          );
          for (final comp in _completers) comp.complete(false);
          _completers.clear();
          return false;
        }

        if (NetworkUtil.isNetworkError(e) || NetworkUtil.isServerError(e)) {
          AppLogger.warning(
            'Auth check: network/server error during refresh (${e.type}), assume authorized',
          );
          for (final comp in _completers) comp.complete(true);
          _completers.clear();
          return true;
        }

        AppLogger.info(
          'Auth check: DioException ${e.type} during refresh, assume authorized',
        );
        for (final comp in _completers) comp.complete(true);
        _completers.clear();
        return true;
      } catch (e, st) {
        AppLogger.error(
          'Auth check: unexpected error during refresh, assume authorized',
          e,
          st,
        );
        for (final comp in _completers) comp.complete(true);
        _completers.clear();
        return true;
      } finally {
        _isRefreshing = false;
      }
    } catch (e, st) {
      AppLogger.error(
        'Auth check: top-level unexpected error, assume authorized',
        e,
        st,
      );
      return true;
    }
  }
}
