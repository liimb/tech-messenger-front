part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = RegistrationInitialState;
  const factory RegistrationState.loading() = RegistrationLoadingState;
  const factory RegistrationState.success() = RegistrationSuccessState;
  const factory RegistrationState.error(String message) =
      RegistrationErrorState;
}
