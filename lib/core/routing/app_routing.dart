import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/modules/auth/presentation/auth_screen.dart';
import 'package:tech_messenger/modules/home/presentation/home_screen.dart';
import 'package:tech_messenger/modules/registration/presentation/registration_screen.dart';

final router = GoRouter(
  initialLocation: '/home',
  //errorBuilder: (context, state) => const ErrorRouteWidget(),
  routes: [
    GoRoute(
      path: '/auth',
      pageBuilder: (context, state) => const MaterialPage(child: AuthScreen()),
    ),
    GoRoute(
      path: '/registration',
      pageBuilder: (context, state) =>
          const MaterialPage(child: RegistrationScreen()),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
    ),
  ],
);
