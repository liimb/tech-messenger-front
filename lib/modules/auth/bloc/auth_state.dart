part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticate() = AuthHasState;
  const factory AuthState.notAuthenticate() = AuthNotState;
}
