import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request.freezed.dart';

part 'registration_request.g.dart';

@freezed
sealed class RegistrationRequest with _$RegistrationRequest {
  const factory RegistrationRequest({
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'password_repeat') required String passwordRepeat,
  }) = _RegistrationRequest;

  factory RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestFromJson(json);
}
