import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/modules/login/presentation/login_screen.dart';
import 'package:tech_messenger/modules/registration/presentation/registration_screen.dart';

enum AppRoutes {
  login('/login'),
  registration('/registration'),
  home("/home");

  const AppRoutes(this.routePath);
  final String routePath;
}

final router = GoRouter(
  initialLocation: AppRoutes.login.routePath,
  //errorBuilder: (context, state) => const ErrorRouteWidget(),
  routes: [
    GoRoute(
      path: AppRoutes.login.routePath,
      pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
    ),
    GoRoute(
      path: AppRoutes.registration.routePath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: RegistrationScreen()),
    ),
    GoRoute(
      path: AppRoutes.home.routePath,
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
    ),
  ],
);
