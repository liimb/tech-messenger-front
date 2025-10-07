part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submit({
    required String nickname,
    required String password,
    required String passwordRepeat,
  }) = SubmitRegistrationEvent;
}
