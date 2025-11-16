import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/network/stomp_service.dart';
import 'package:tech_messenger/core/util/auth_checker_util.dart';
import 'package:tech_messenger/modules/auth/domain/repository/auth_repository_interface.dart';
import 'package:tech_messenger/core/common/user_local_storage/user_local_storage.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final AuthChecker _authChecker;
  final StompService _stompService;
  final SecureStorage _secureStorage;
  final UserLocalStorage _userLocalStorage;

  AuthBloc({
    required IAuthRepository authRepository,
    required SecureStorage secureStorage,
    required StompService stompService,
    required UserLocalStorage userLocalStorage,
    required AuthChecker authChecker,
  }) : _authRepository = authRepository,
       _secureStorage = secureStorage,
       _userLocalStorage = userLocalStorage,
       _authChecker = authChecker,
       _stompService = stompService,
       super(AuthInitialState()) {
    on<AuthCheckEvent>(_onCheckAuth);
    on<AuthLogoutEvent>(_onLogout);
    on<AuthSetEvent>(_onSetAuth);
  }

  Future<void> _onSetAuth(AuthSetEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.authenticated());
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
    await _userLocalStorage.clearUser();
    emit(AuthState.unauthenticated());
  }

  Future<void> _onCheckAuth(
    AuthCheckEvent event,
    Emitter<AuthState> emit,
  ) async {
    final isAuth = await _authChecker.checkAuth();
    if (isAuth) {
      _stompService.activate();
      emit(const AuthState.authenticated());
    } else {
      _stompService.deactivate();
      emit(const AuthState.unauthenticated());
    }
  }
}
