import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submit({
    required String nickname,
    required String password,
    required String repeatPassword,
  }) = SubmitRegistration;
}
