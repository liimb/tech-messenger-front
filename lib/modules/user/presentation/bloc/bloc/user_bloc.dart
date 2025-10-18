import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/user/data/repository/user_repository_impl.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc({required UserRepository userRepository})
    : _userRepository = userRepository,
      super(UserLoadingState()) {
    on<UserFetchEvent>(_onFetchUser);
  }

  Future<void> _onFetchUser(
    UserFetchEvent event,
    Emitter<UserState> emit,
  ) async {}
}
