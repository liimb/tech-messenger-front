part of 'search_bloc.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUsers(String name) = SearchUsersEvent;
  const factory SearchEvent.reset() = SearchResetEvent;
}
