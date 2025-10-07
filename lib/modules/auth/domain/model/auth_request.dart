import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.freezed.dart';

part 'auth_request.g.dart';

@freezed
sealed class AuthRequest with _$AuthRequest {
  const factory AuthRequest({
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'password') required String password,
  }) = _AuthRequest;

  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);
}
