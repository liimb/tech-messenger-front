import 'package:talker/talker.dart';

class AppLogger {
  static final Talker _talker = Talker();

  static void info(String message) => _talker.info(message);
  static void error(String message, [Object? err, StackTrace? st]) =>
      _talker.error(message, err, st);
  static void warning(String message, [Object? err, StackTrace? st]) =>
      _talker.warning(message, err, st);
  static void debug(String message) => _talker.debug(message);
}
