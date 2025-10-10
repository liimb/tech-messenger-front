part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;
  const factory AuthState.authenticated() = AuthHasState;
  const factory AuthState.unauthenticated() = AuthNotState;
}
