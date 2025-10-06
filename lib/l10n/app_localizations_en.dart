// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get auth => 'Login';

  @override
  String get registration => 'Registration';

  @override
  String get yourNickname => 'Nickname';

  @override
  String get errorUncorrectNickname =>
      'The nickname must be at least 3 characters long';

  @override
  String get fieldMustNotEmpty => 'Compulsory field!';

  @override
  String get yourPassword => 'Password';

  @override
  String get errorUncorrectPassword =>
      'The password must be at least 8 characters long and\ncontain uppercase letters\n●numbers\n●special characters';

  @override
  String get repeatYourPassword => 'Repeat password';

  @override
  String get errorPasswordsDoNotMatch => 'Passwords must match';

  @override
  String get login => 'Login';

  @override
  String get noAccount => 'No account?';

  @override
  String get hasAccount => 'Do you have an account?';

  @override
  String get doLogin => 'Login';

  @override
  String get register => 'Register';
}
