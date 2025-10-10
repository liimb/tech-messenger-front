import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/modules/error/error_model.dart';
import 'package:tech_messenger/modules/jwt/domain/model/jwt_model.dart';
import 'package:tech_messenger/modules/registration/domain/model/registration_request.dart';
import 'package:tech_messenger/modules/registration/domain/repository/registration_repository_interface.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IRegistrationRepository _registrationRepository;
  final SecureStorage _secureStorage;

  RegistrationBloc({
    required IRegistrationRepository registrationRepository,
    required SecureStorage secureStorage,
  }) : _registrationRepository = registrationRepository,
       _secureStorage = secureStorage,
       super(const RegistrationState.initial()) {
    on<SubmitRegistrationEvent>(_onSubmitRegistration);
  }

  Future<void> _onSubmitRegistration(
    SubmitRegistrationEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    try {
      emit(RegistrationState.loading());

      final response = await _registrationRepository.register(
        RegistrationRequest(
          nickname: event.nickname,
          password: event.password,
          passwordRepeat: event.passwordRepeat,
        ),
      );

      if (response.response.statusCode == 200) {
        final jwt = JwtModel.fromJson(response.response.data);
        await _secureStorage.saveToken(jwt);
        emit(RegistrationState.success());
        AppLogger.info('Успешная регистрация:\n$jwt');
      } else {
        try {
          final error = ErrorModel.fromJson(response.response.data);
          emit(RegistrationState.error(error.message));
          AppLogger.error('Ошибка при регистрации:\n$error');
        } catch (e, st) {
          emit(RegistrationState.error('Ошибка на сервере'));
          AppLogger.error('Ошибка при регистрации:\n$e\n$st');
        }
      }
    } catch (e, st) {
      emit(RegistrationState.error('Неизвестная ошибка'));
      AppLogger.error(
        'Ошибка при регистрации:${e.toString()}\n${st.toString()}',
      );
    }
  }
}
