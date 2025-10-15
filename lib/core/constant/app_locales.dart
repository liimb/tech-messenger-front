enum AppLocales {
  ru('ru', 'Русский'),
  en('en', 'English'),
  kk('kk', 'Қазақ тілі');

  const AppLocales(this.locale, this.fullName);
  final String locale;
  final String fullName;
}
