import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_avatar.freezed.dart';
part 'update_avatar.g.dart';

@freezed
sealed class UpdateAvatarRequest with _$UpdateAvatarRequest {
  const factory UpdateAvatarRequest({
    @JsonKey(name: "avatar") required String avatar,
  }) = _UpdateAvatarRequest;

  factory UpdateAvatarRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAvatarRequestFromJson(json);
}
