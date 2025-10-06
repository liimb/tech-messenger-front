import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = RegistrationInitial;
  const factory RegistrationState.loading() = RegistrationLoading;
  const factory RegistrationState.nicknameExistsError(String message) =
      NicknameExistsError;
  const factory RegistrationState.passwordMismatchError(String message) =
      PasswordMismatchError;
  const factory RegistrationState.success() = RegistrationSuccess;
  const factory RegistrationState.error(String message) = RegistrationError;
}
