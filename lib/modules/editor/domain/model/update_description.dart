import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_description.freezed.dart';
part 'update_description.g.dart';

@freezed
sealed class UpdateDescriptionRequest with _$UpdateDescriptionRequest {
  const factory UpdateDescriptionRequest({
    @JsonKey(name: "description") required String description,
  }) = _UpdateDescriptionRequest;

  factory UpdateDescriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDescriptionRequestFromJson(json);
}
