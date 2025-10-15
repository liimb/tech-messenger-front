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
  String get yourName => 'Your name';

  @override
  String get errorUncorrectNickname =>
      'The nickname must be at least 3 characters long';

  @override
  String get fieldMustNotEmpty => 'Compulsory field!';

  @override
  String get yourPassword => 'Password';

  @override
  String get errorUncorrectPassword =>
      'The password must be at least 8 characters long and contain uppercase letters numbers special characters';

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

  @override
  String get allChats => 'All chats';

  @override
  String get settings => 'Settings';

  @override
  String get theme => 'Theme';

  @override
  String get language => 'Language';

  @override
  String get delete => 'Delete';

  @override
  String get ok => 'OK';

  @override
  String get registrationProcess => 'Registration...';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get registrationSuccess => 'Registration is successful';

  @override
  String get loginProcess => 'Login...';

  @override
  String get loginSuccess => 'Login is successful';

  @override
  String get search => 'Search';

  @override
  String get exit => 'Exit';
}
