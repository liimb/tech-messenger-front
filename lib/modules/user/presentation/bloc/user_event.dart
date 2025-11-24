part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUser() = UserFetchEvent;
  const factory UserEvent.getCachedUser() = UserGetCachedEvent;
}
