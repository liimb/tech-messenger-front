part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.tryLogin({
    required String nickname,
    required String password,
  }) = LoginTryEvent;
}
