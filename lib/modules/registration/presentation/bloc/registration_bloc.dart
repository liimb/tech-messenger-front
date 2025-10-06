import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/core/data/repository/auth_repository.dart';
import 'registration_event.dart';
import 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepository _authRepository;

  RegistrationBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(const RegistrationState.initial()) {
    on<SubmitRegistration>(_onSubmitRegistration);
  }

  Future<void> _onSubmitRegistration(
    SubmitRegistration event,
    Emitter<RegistrationState> emit,
  ) async {
    if (event.password != event.repeatPassword) {
      emit(
        const RegistrationState.passwordMismatchError('Пароли не совпадают'),
      );
      return;
    }

    if (event.nickname.isEmpty || event.password.isEmpty) {
      emit(const RegistrationState.error('Заполните все поля'));
      return;
    }

    emit(const RegistrationState.loading());

    try {
      final nicknameResponse = await _authRepository.checkNicknameExists({
        'nickname': event.nickname,
      });
      if (nicknameResponse.exists) {
        emit(
          RegistrationState.nicknameExistsError(
            'Никнейм "${event.nickname}" уже занят',
          ),
        );
        return;
      }

      final registerResponse = await _authRepository.registerUser({
        'nickname': event.nickname,
        'password': event.password,
      });
      if (registerResponse.success) {
        emit(const RegistrationState.success());
      } else {
        emit(
          RegistrationState.error(
            registerResponse.message ?? 'Ошибка регистрации',
          ),
        );
      }
    } catch (e) {
      emit(RegistrationState.error('Сетевая ошибка: $e'));
    }
  }
}
