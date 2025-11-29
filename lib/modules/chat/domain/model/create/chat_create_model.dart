import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_create_model.g.dart';
part 'chat_create_model.freezed.dart';

@freezed
sealed class ChatCreateModel with _$ChatCreateModel {
  const factory ChatCreateModel({
    @JsonKey(name: 'userId1') required String userIdOne,
    @JsonKey(name: 'userId2') required String userIdTwo,
  }) = _ChatCreateModel;

  factory ChatCreateModel.fromJson(Map<String, dynamic> json) =>
      _$ChatCreateModelFromJson(json);
}
