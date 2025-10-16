part of 'settings_bloc.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.toggleTheme() = ToggleThemeEvent;
  const factory SettingsEvent.setTheme({required ThemeMode themeMode}) =
      SetThemeEvent;
  const factory SettingsEvent.setLocale({required AppLocales locale}) =
      SetLocaleEvent;
}
