import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
sealed class SearchResponse with _$SearchResponse {
  const factory SearchResponse({required List<UserModel> users}) =
      _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
