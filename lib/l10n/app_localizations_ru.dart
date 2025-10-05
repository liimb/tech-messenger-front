// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get auth => 'Вход';

  @override
  String get registration => 'Регистрация';

  @override
  String get yourNickname => 'Никнейм';

  @override
  String get yourPassword => 'Пароль';

  @override
  String get repeatYourPassword => 'Повторите пароль';

  @override
  String get login => 'Войти';

  @override
  String get noAccount => 'Нет аккаунта?';

  @override
  String get hasAccount => 'Есть аккаунт?';

  @override
  String get doLogin => 'Войдите';

  @override
  String get register => 'Зарегистрироваться';

  @override
  String get allChats => 'Все чаты';

  @override
  String get settings => 'Настройки';
}
