import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_messenger/app/app_config.dart';
import 'package:tech_messenger/app/app_logger.dart';
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
        builder: (context, child) {
          return BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              final location = router.routerDelegate.currentConfiguration.uri
                  .toString();

              state.mapOrNull(
                authenticated: (_) {
                  final isAuthPage =
                      location == AppRoutes.login.routePath ||
                      location == AppRoutes.registration.routePath;
                  if (isAuthPage) {
                    router.go(AppRoutes.home.routePath);
                  }
                },
                unauthenticated: (_) {
                  if (location != AppRoutes.login.routePath &&
                      location != AppRoutes.registration.routePath) {
                    router.go(AppRoutes.login.routePath);
                  }
                },
              );
            },
            builder: (context, state) {
              if (state is AuthInitialState) {
                return const Center(child: CircularProgressIndicator());
              }

              return child!;
            },
          );
        },
      ),
    );
  }
}
