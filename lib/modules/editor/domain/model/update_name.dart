import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_name.freezed.dart';
part 'update_name.g.dart';

@freezed
sealed class UpdateNameRequest with _$UpdateNameRequest {
  const factory UpdateNameRequest({
    @JsonKey(name: "name") required String name,
  }) = _UpdateNameRequest;

  factory UpdateNameRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNameRequestFromJson(json);
}
