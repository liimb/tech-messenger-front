part of 'avatar_bloc.dart';

@freezed
abstract class AvatarEvent with _$AvatarEvent {
  const factory AvatarEvent.create() = CreateEvent;
}
