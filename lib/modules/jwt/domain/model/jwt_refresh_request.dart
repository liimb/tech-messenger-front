import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_refresh_request.freezed.dart';
part 'jwt_refresh_request.g.dart';

@freezed
sealed class JwtRefreshRequest with _$JwtRefreshRequest {
  const factory JwtRefreshRequest({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _JwtRefreshRequest;

  factory JwtRefreshRequest.fromJson(Map<String, dynamic> json) =>
      _$JwtRefreshRequestFromJson(json);
}
