import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_create_response.g.dart';
part 'chat_create_response.freezed.dart';

@freezed
sealed class ChatCreateResponse with _$ChatCreateResponse {
  const factory ChatCreateResponse({
    @JsonKey(name: 'chatId') required String chatId,
  }) = _ChatCreateResponse;

  factory ChatCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCreateResponseFromJson(json);
}
