import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/routing/build_animation.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_entry.dart';
import 'package:tech_messenger/modules/chat/presentation/chat_screen.dart';
import 'package:tech_messenger/modules/editor/presentation/editor_screen.dart';
import 'package:tech_messenger/modules/home/presentation/home_screen.dart';
import 'package:tech_messenger/modules/login/presentation/login_screen.dart';
import 'package:tech_messenger/modules/registration/presentation/registration_screen.dart';
import 'package:tech_messenger/modules/search/presentation/search_screen.dart';

enum AppRoutes {
  login('/login'),
  registration('/registration'),
  home('/home'),
  search('/search'),
  chat('/chat'),
  editor('/editor');

  const AppRoutes(this.routePath);
  final String routePath;
}

final router = GoRouter(
  initialLocation: AppRoutes.login.routePath,
  redirect: (BuildContext context, GoRouterState state) {
    final authBloc = context.read<AuthBloc>();
    final authState = authBloc.state;

    final isGoingToLogin = state.matchedLocation == AppRoutes.login.routePath;
    final isGoingToRegistration =
        state.matchedLocation == AppRoutes.registration.routePath;
    final isGoingToHome = state.matchedLocation == AppRoutes.home.routePath;

    final isAuthPage = isGoingToLogin || isGoingToRegistration;
    final isProtectedPage = isGoingToHome;

    if (authState is AuthInitialState) {
      return null;
    }

    if (authState is AuthHasState && isAuthPage) {
      return AppRoutes.home.routePath;
    }

    if (authState is AuthNotState && isProtectedPage) {
      return AppRoutes.login.routePath;
    }

    return null;
  },
  //errorBuilder: (context, state) => const ErrorRouteWidget(),
  routes: [
    GoRoute(
      path: AppRoutes.login.routePath,
      pageBuilder: (context, state) =>
          buildPageWithAnimation(child: const LoginScreen(), state: state),
    ),
    GoRoute(
      path: AppRoutes.registration.routePath,
      pageBuilder: (context, state) => buildPageWithAnimation(
        child: const RegistrationScreen(),
        state: state,
      ),
    ),
    GoRoute(
      path: AppRoutes.home.routePath,
      pageBuilder: (context, state) =>
          buildPageWithAnimation(child: const HomeScreen(), state: state),
      routes: [
        GoRoute(
          path: AppRoutes.search.routePath,
          pageBuilder: (context, state) =>
              buildPageWithAnimation(child: SearchScreen(), state: state),
        ),
        GoRoute(
          path: AppRoutes.chat.routePath,
          pageBuilder: (context, state) {
            final ChatEntry entry = state.extra as ChatEntry;
            return buildPageWithAnimation(
              child: ChatScreen(chatEntry: entry),
              state: state,
            );
          },
        ),
        GoRoute(
          path: AppRoutes.editor.routePath,
          pageBuilder: (context, state) =>
              buildPageWithAnimation(child: EditorScreen(), state: state),
        ),
      ],
    ),
  ],
);
