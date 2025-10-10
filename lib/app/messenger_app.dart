import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/app/app_config.dart';
import 'package:tech_messenger/app/app_providers.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/theme/app_theme.dart';
import 'package:tech_messenger/l10n/app_localizations.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';

class MessengerApp extends StatelessWidget {
  const MessengerApp({super.key, required this.config});

  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return AppProviders(
      config: config,
      child: MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('ru')],
        locale: const Locale('ru'),
        routerConfig: router,
        theme: AppTheme.darkTheme,
      ),
    );
  }
}
