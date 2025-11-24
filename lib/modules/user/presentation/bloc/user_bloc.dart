import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _userRepository;

  UserBloc({required IUserRepository userRepository})
    : _userRepository = userRepository,
      super(UserLoadingState()) {
    on<UserFetchEvent>(_onFetchUser);
    on<UserGetCachedEvent>(_onGetCachedUser);
  }

  Future<void> _onFetchUser(
    UserFetchEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      emit(UserState.loading());
      final response = await _userRepository.fetchUser();
      if (response.response.statusCode == 200) {
        emit(UserState.loaded(UserModel.fromJson(response.response.data)));
      } else {
        AppLogger.error('Ошибка при fetchUser():\n${response.response.data}');
      }
    } catch (e, st) {
      AppLogger.error('Ошибка при fetchUser():\n${e}\n${st}');
    }
  }

  Future<void> _onGetCachedUser(
    UserGetCachedEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      emit(UserState.loading());
      final user = await _userRepository.getCachedUser();
      if (user != null) {
        emit(UserState.loaded(user));
      } else {
        AppLogger.error('Ошибка при getCachedUser():\n${user}');
      }
    } catch (e, st) {
      AppLogger.error('Ошибка при getCachedUser():\n${e}\n${st}');
    }
  }
}
