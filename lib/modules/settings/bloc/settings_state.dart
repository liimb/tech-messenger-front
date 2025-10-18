part of 'settings_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(AppLocales.en) AppLocales locale,
  }) = _SettingsState;
}
