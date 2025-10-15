part of 'settings_bloc.dart';

abstract class SettingsEvent {}

class ToggleThemeEvent extends SettingsEvent {}

class SetThemeEvent extends SettingsEvent {
  final ThemeMode themeMode;
  SetThemeEvent(this.themeMode);
}

class SetLocaleEvent extends SettingsEvent {
  final AppLocales locale;
  SetLocaleEvent(this.locale);
}
