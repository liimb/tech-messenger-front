import 'dart:io';

import 'package:dio/dio.dart';

abstract class NetworkUtil {
  static bool isNetworkError(DioException err) {
    return err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        (err.error is SocketException) ||
        (err.message?.contains('Network is unreachable') == true) ||
        (err.message?.contains('Connection refused') == true) ||
        (err.message?.contains('Failed host lookup') == true);
  }

  static bool isServerError(DioException err) {
    final statusCode = err.response?.statusCode;
    return statusCode != null && statusCode >= 500 && statusCode < 600;
  }
}
