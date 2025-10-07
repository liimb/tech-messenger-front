import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_model.freezed.dart';

part 'jwt_model.g.dart';

@freezed
sealed class JwtModel with _$JwtModel {
  const factory JwtModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _JwtModel;

  factory JwtModel.fromJson(Map<String, dynamic> json) =>
      _$JwtModelFromJson(json);
}
