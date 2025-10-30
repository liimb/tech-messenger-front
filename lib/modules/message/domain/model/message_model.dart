import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
sealed class MessageModel with _$MessageModel {
  const factory MessageModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'text') required String text,
    @JsonKey(name: 'sendtime') required DateTime sendTime,
    @JsonKey(name: 'author') required UserModel author,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
