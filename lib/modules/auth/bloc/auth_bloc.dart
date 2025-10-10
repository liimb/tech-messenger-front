import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_model.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_refresh_request.dart';
import 'package:tech_messenger/modules/jwt/domain/repository/jwt_repository_interface.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IJwtRepository _jwtRepository;
  final SecureStorage _secureStorage;

  AuthBloc({
    required IJwtRepository jwtRepository,
    required SecureStorage secureStorage,
  }) : _jwtRepository = jwtRepository,
       _secureStorage = secureStorage,
       super(AuthInitialState()) {
    on<AuthCheckEvent>(_onCheckAuth);
    on<AuthLogoutEvent>(_onLogout);
  }

  Future<void> _onLogout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    await _secureStorage.deleteToken();
    emit(AuthState.unauthenticated());
  }

  Future<void> _onCheckAuth(
    AuthCheckEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthState.initial());
      final jwt = await _secureStorage.getToken();

      if (jwt == null) {
        emit(AuthState.unauthenticated());
        return;
      }

      final response = await _jwtRepository.refresh(
        JwtRefreshRequest(refreshToken: jwt.refreshToken),
      );

      if (response.response.statusCode == 200) {
        final newJwt = JwtModel.fromJson(response.response.data);
        await _secureStorage.saveToken(newJwt);
        emit(AuthState.authenticated());
        AppLogger.info('Пользователь аутентифицирован!');
      } else {
        AppLogger.error('Ошибка обновления токена: ${response.response.data}');
        emit(AuthState.unauthenticated());
      }
    } catch (e, st) {
      AppLogger.error('Ошибка обновления токена: $e \n $st');
      emit(AuthState.unauthenticated());
    }
  }
}
