// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get auth => 'Кіру';

  @override
  String get registration => 'Тіркелу';

  @override
  String get yourNickname => 'Лақап атыңыз';

  @override
  String get yourName => 'Атыңыз';

  @override
  String get errorUncorrectNickname =>
      'Атаудың ұзындығы кемінде 3 және 20 таңбадан аспауы керек';

  @override
  String get errorUncorrectName =>
      'Имя должно быть не менее 3 и не более 20 символов';

  @override
  String get fieldMustNotEmpty => 'Бұл өріс міндетті!';

  @override
  String get yourPassword => 'Құпиясөз';

  @override
  String get errorUncorrectPassword =>
      'Құпиясөз кемінде 8 таңбадан тұруы, бас әріптер, сандар және арнайы таңбалар қамтуы керек';

  @override
  String get repeatYourPassword => 'Құпиясөзді қайталаңыз';

  @override
  String get errorPasswordsDoNotMatch => 'Құпиясөздер сәйкес келмейді';

  @override
  String get login => 'Кіру';

  @override
  String get noAccount => 'Тіркелгі жоқ па?';

  @override
  String get hasAccount => 'Тіркелгіңіз бар ма?';

  @override
  String get doLogin => 'Кіру';

  @override
  String get register => 'Тіркелу';

  @override
  String get allChats => 'Барлық чаттар';

  @override
  String get settings => 'Баптаулар';

  @override
  String get theme => 'Тақырып';

  @override
  String get language => 'Тіл';

  @override
  String get delete => 'Жою';

  @override
  String get ok => 'ОК';

  @override
  String get registrationProcess => 'Тіркелу жүріп жатыр...';

  @override
  String get unknownError => 'Белгісіз қате';

  @override
  String get registrationSuccess => 'Тіркелу сәтті аяқталды';

  @override
  String get loginProcess => 'Кіру жүріп жатыр...';

  @override
  String get loginSuccess => 'Кіру сәтті өтті';

  @override
  String get search => 'Іздеу';

  @override
  String get exit => 'Шығу';

  @override
  String get enterMessage => 'Хабарламаны енгізіңіз...';

  @override
  String get usersAreNotFound => 'Пайдаланушылар табылмады';

  @override
  String get editProfile => 'Профильді өңдеу';

  @override
  String get editingProcess => 'Деректерді өзгерту...';

  @override
  String get editingSuccess => 'Деректер жаңартылды';
}
