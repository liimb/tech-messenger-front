import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:json_annotation/json_annotation.dart';

part 'api_models.freezed.dart';
part 'api_models.g.dart';

@freezed
class CheckNicknameResponse with _$CheckNicknameResponse {
  // @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CheckNicknameResponse({required bool exists}) =
      _CheckNicknameResponse;

  factory CheckNicknameResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckNicknameResponseFromJson(json);
}

@freezed
class RegisterResponse with _$RegisterResponse {
  // @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegisterResponse({required bool success, String? message}) =
      _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
