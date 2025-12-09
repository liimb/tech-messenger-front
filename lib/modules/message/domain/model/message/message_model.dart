import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
sealed class MessageModel with _$MessageModel {
  const factory MessageModel({
    @JsonKey(name: 'id') String? id,

    @Default('Неизвестно') @JsonKey(name: 'senderName') String senderName,

    @Default('') @JsonKey(name: 'messageText') String messageText,

    @JsonKey(name: 'sentTime') @DateTimeConverter() required DateTime sentTime,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromJson(String json) => DateTime.parse(json);
  @override
  String toJson(DateTime object) => object.toIso8601String();
}
