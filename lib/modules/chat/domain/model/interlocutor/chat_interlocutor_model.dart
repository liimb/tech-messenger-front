import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_interlocutor_model.g.dart';
part 'chat_interlocutor_model.freezed.dart';

@freezed
sealed class ChatInterlocutorModel with _$ChatInterlocutorModel {
  const factory ChatInterlocutorModel({
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _ChatInterlocutorModel;

  factory ChatInterlocutorModel.fromJson(Map<String, dynamic> json) =>
      _$ChatInterlocutorModelFromJson(json);
}
