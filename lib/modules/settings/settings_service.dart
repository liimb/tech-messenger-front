import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_locales.dart';
import 'dart:ui' as ui;

class SettingsService {
  static const _themeKey = 'isDarkMode';
  static const _localeKey = 'appLocale';

  Future<void> saveThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, themeMode == ThemeMode.dark);
  }

  Future<ThemeMode> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_themeKey);
    if (isDark == null) {
      return ThemeMode.system;
    }
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> saveLocale(AppLocales locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.locale);
  }

  Future<AppLocales> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_localeKey);
    if (code == null) {
      return AppLocales.values.byName(
        ui.PlatformDispatcher.instance.locale.languageCode,
      );
    }
    return AppLocales.values.byName(code);
  }
}
