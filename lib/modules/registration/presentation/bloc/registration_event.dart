part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submit({
    required String nickname,
    required String name,
    required String password,
    required String passwordRepeat,
  }) = SubmitRegistrationEvent;
}
