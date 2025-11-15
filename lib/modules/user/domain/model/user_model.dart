import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'description') String? description,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
