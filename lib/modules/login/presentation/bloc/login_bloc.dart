import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/modules/error/error_model.dart';
import 'package:tech_messenger/modules/jwt/jwt_model.dart';
import 'package:tech_messenger/modules/login/domain/model/login_request.dart';
import 'package:tech_messenger/modules/login/domain/repository/login_repository_interface.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository _loginRepository;
  final SecureStorage _secureStorage;

  LoginBloc({
    required ILoginRepository loginRepository,
    required SecureStorage secureStorage,
  }) : _secureStorage = secureStorage,
       _loginRepository = loginRepository,
       super(LoginInitialState()) {
    on<LoginTryEvent>(_onTryLogin);
  }

  void _onTryLogin(LoginTryEvent event, Emitter<LoginState> emit) async {
    try {
      emit(LoginState.loading());

      final response = await _loginRepository.tryLogin(
        LoginRequest(nickname: event.nickname, password: event.password),
      );

      if (response.response.statusCode == 200) {
        final jwt = JwtModel.fromJson(response.response.data);
        await _secureStorage.saveToken(jwt);
        emit(LoginState.success());
        AppLogger.info('Успешный вход:\n$jwt');
      } else {
        try {
          final error = ErrorModel.fromJson(response.response.data);
          emit(LoginState.failure(error.message));
          AppLogger.error('Ошибка при входе:\n$error');
        } catch (e, st) {
          emit(LoginState.failure('Ошибка на сервере'));
          AppLogger.error('Ошибка при входе:\n$e\n$st');
        }
      }
    } catch (e, st) {
      emit(LoginState.failure('Неизвестная ошибка'));
      AppLogger.error('Ошибка при входе:${e.toString()}\n${st.toString()}');
    }
  }
}
