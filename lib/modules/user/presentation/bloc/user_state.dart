part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.loading() = UserLoadingState;
  const factory UserState.loaded(UserModel user) = UserLoadedState;
}
