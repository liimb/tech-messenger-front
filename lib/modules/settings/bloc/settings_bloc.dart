import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tech_messenger/core/constant/app_locales.dart';
import 'package:tech_messenger/modules/settings/settings_service.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsService settingsService;

  SettingsBloc({required this.settingsService}) : super(SettingsState()) {
    on<ToggleThemeEvent>((event, emit) async {
      final newTheme = state.themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
      emit(state.copyWith(themeMode: newTheme));
      await settingsService.saveThemeMode(newTheme);
    });

    on<SetThemeEvent>((event, emit) async {
      emit(state.copyWith(themeMode: event.themeMode));
      await settingsService.saveThemeMode(event.themeMode);
    });

    on<SetLocaleEvent>((event, emit) async {
      emit(state.copyWith(locale: event.locale));
      await settingsService.saveLocale(event.locale);
    });
    _loadThemeMode();
    _loadLocale();
  }

  Future<void> _loadThemeMode() async {
    final savedMode = await settingsService.getThemeMode();
    add(SetThemeEvent(savedMode));
  }

  Future<void> _loadLocale() async {
    final savedLocale = await settingsService.getLocale();
    add(SetLocaleEvent(savedLocale));
  }
}
