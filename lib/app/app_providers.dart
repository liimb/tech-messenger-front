import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/app/app_config.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/editor/data/datasource/impl/editor_datasource_impl.dart';
import 'package:tech_messenger/modules/editor/data/repository/editor_repository_impl.dart';
import 'package:tech_messenger/modules/editor/domain/repository/editor_repository_interface.dart';
import 'package:tech_messenger/modules/jwt/data/datasource/impl/jwt_datasource_impl.dart';
import 'package:tech_messenger/modules/jwt/data/repository/jwt_repository_impl.dart';
import 'package:tech_messenger/modules/jwt/domain/repository/jwt_repository_interface.dart';
import 'package:tech_messenger/modules/login/data/datasource/impl/login_datasource_impl.dart';
import 'package:tech_messenger/modules/login/data/repository/login_repository_impl.dart';
import 'package:tech_messenger/modules/login/domain/repository/login_repository_interface.dart';
import 'package:tech_messenger/modules/login/presentation/bloc/login_bloc.dart';
import 'package:tech_messenger/modules/registration/data/datasource/impl/registration_datasource_impl.dart';
import 'package:tech_messenger/modules/registration/data/repository/registration_repository_impl.dart';
import 'package:tech_messenger/modules/registration/domain/repository/registration_repository_interface.dart';
import 'package:tech_messenger/modules/registration/presentation/bloc/registration_bloc.dart';
import 'package:tech_messenger/modules/search/data/datasource/impl/search_datasource_impl.dart';
import 'package:tech_messenger/modules/search/data/repository/search_repository_impl.dart';
import 'package:tech_messenger/modules/search/domain/repository/search_repository_interface.dart';
import 'package:tech_messenger/modules/search/presentation/bloc/search_bloc.dart';
import 'package:tech_messenger/modules/settings/bloc/settings_bloc.dart';
import 'package:tech_messenger/modules/user/data/datasource/impl/user_datasource_impl.dart';
import 'package:tech_messenger/modules/user/data/repository/user_repository_impl.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';
import 'package:tech_messenger/modules/user/presentation/bloc/user_bloc.dart';

class AppProviders extends StatelessWidget {
  const AppProviders({super.key, required this.child, required this.config});

  final Widget child;
  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<StompService>.value(value: config.stompService),
        RepositoryProvider<IRegistrationRepository>(
          create: (context) => RegistrationRepository(
            ds: RegistrationDatasource(config.dio, baseUrl: config.baseUrl),
          ),
        ),
        RepositoryProvider<ILoginRepository>(
          create: (context) => LoginRepository(
            ds: LoginDatasource(config.dio, baseUrl: config.baseUrl),
          ),
        ),
        RepositoryProvider<IJwtRepository>(
          create: (context) => JwtRepository(
            ds: JwtDatasource(config.dio, baseUrl: config.baseUrl),
          ),
        ),
        RepositoryProvider<IUserRepository>(
          create: (context) => UserRepository(
            ds: UserDatasource(config.dio, baseUrl: config.baseUrl),
            localStorage: config.userLocalStorage,
          ),
        ),
        RepositoryProvider<ISearchRepository>(
          create: (context) => SearchRepository(
            ds: SearchDatasource(config.dio, baseUrl: config.baseUrl),
          ),
        ),
        RepositoryProvider<IEditorRepository>(
          create: (context) => EditorRepository(
            ds: EditorDatasource(config.dio, baseUrl: config.baseUrl),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RegistrationBloc(
              registrationRepository: context.read<IRegistrationRepository>(),
              secureStorage: config.secureStorage,
            ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              loginRepository: context.read<ILoginRepository>(),
              secureStorage: config.secureStorage,
            ),
          ),
          BlocProvider.value(
            value: config.authBloc..add(const AuthEvent.checkAuth()),
          ),
          BlocProvider(
            create: (_) =>
                SettingsBloc(settingsService: config.settingsService),
          ),
          BlocProvider(
            create: (context) =>
                UserBloc(userRepository: context.read<IUserRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                SearchBloc(searchRepository: context.read<ISearchRepository>()),
          ),
        ],
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthHasState) {
              context.read<UserBloc>().add(const UserEvent.fetchUser());
            }
          },
          child: child,
        ),
      ),
    );
  }
}
