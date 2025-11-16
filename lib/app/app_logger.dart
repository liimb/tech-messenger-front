import 'package:talker/talker.dart';

class AppLogger {
  static final Talker _talker = Talker();

  static void info(String message) => _log(_talker.info, message);
  static void error(String message, [Object? err, StackTrace? st]) =>
      _logWithError(_talker.error, message, err, st);
  static void warning(String message, [Object? err, StackTrace? st]) =>
      _logWithError(_talker.warning, message, err, st);
  static void debug(String message) => _log(_talker.debug, message);

  static void _log(Function(String) logMethod, String message) {
    final callerInfo = _getCallerInfo();
    logMethod('$callerInfo $message');
  }

  static void _logWithError(
    Function(String, [Object?, StackTrace?]) logMethod,
    String message,
    Object? err,
    StackTrace? st,
  ) {
    final callerInfo = _getCallerInfo();
    logMethod('$callerInfo $message', err, st);
  }

  static String _getCallerInfo() {
    try {
      final stack = StackTrace.current;
      final lines = stack.toString().split('\n');

      if (lines.length >= 4) {
        final callerLine = lines[3];
        return _parseStackTraceLine(callerLine);
      }
      return '[Unknown]';
    } catch (e) {
      return '[Error: $e]';
    }
  }

  static String _parseStackTraceLine(String line) {
    try {
      line = line.trim();

      final regex = RegExp(r'#\d+\s+([^(]+)\s+\((.+):(\d+):(\d+)\)');
      final match = regex.firstMatch(line);

      if (match != null) {
        final file = match.group(2) ?? 'unknown';
        final lineNumber = match.group(3) ?? '?';

        final fileName = file.split('/').last.split('.').first;

        return '[$fileName:$lineNumber]';
      }

      return '[Unknown]';
    } catch (e) {
      return '[ParseError]';
    }
  }
}
