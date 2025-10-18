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
  String get yourName => 'Ваше имя';

  @override
  String get errorUncorrectNickname =>
      'Никнейм должен быть не менее 3 символов';

  @override
  String get fieldMustNotEmpty => 'Обязательное поле!';

  @override
  String get yourPassword => 'Пароль';

  @override
  String get errorUncorrectPassword =>
      'Пароль должен быть не менее 8 символов и содержать заглавные буквы цифры специальные символы';

  @override
  String get repeatYourPassword => 'Повторите пароль';

  @override
  String get errorPasswordsDoNotMatch => 'Пароли должны совпадать';

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

  @override
  String get theme => 'Тема';

  @override
  String get language => 'Язык';

  @override
  String get delete => 'Удалить';

  @override
  String get ok => 'OK';

  @override
  String get registrationProcess => 'Регистрация...';

  @override
  String get unknownError => 'Неизвестная ошибка';

  @override
  String get registrationSuccess => 'Регистрация успешна';

  @override
  String get loginProcess => 'Вход...';

  @override
  String get loginSuccess => 'Успешный вход';

  @override
  String get search => 'Поиск';

  @override
  String get exit => 'Выйти';
}
