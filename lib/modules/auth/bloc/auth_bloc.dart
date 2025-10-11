import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/util/auth_checker_util.dart';
import 'package:tech_messenger/modules/auth/domain/repository/auth_repository_interface.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final AuthChecker _authChecker;
  final SecureStorage _secureStorage;

  AuthBloc({
    required IAuthRepository authRepository,
    required SecureStorage secureStorage,
    required AuthChecker authChecker,
  }) : _authRepository = authRepository,
       _secureStorage = secureStorage,
       _authChecker = authChecker,
       super(AuthInitialState()) {
    on<AuthCheckEvent>(_onCheckAuth);
    on<AuthLogoutEvent>(_onLogout);
  }

  Future<void> _onLogout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    try {
      if (!event.fromInterceptor) {
        await _authRepository.logout();
      }
    } catch (e, st) {
      AppLogger.error('Ошибка при logout:$e\n$st');
    }
    await _secureStorage.deleteToken();
    emit(AuthState.unauthenticated());
  }

  Future<void> _onCheckAuth(
    AuthCheckEvent event,
    Emitter<AuthState> emit,
  ) async {
    final isAuth = await _authChecker.checkAuth();
    if (isAuth) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.unauthenticated());
    }
  }
}
