part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = AuthCheckEvent;
  const factory AuthEvent.logout(bool fromInterceptor) = AuthLogoutEvent;
}
