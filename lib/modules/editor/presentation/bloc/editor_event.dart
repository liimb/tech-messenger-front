part of 'editor_bloc.dart';

@freezed
abstract class EditorEvent with _$EditorEvent {
  const factory EditorEvent.nameChanged(String newName) = NameChangedEvent;
  const factory EditorEvent.descriptionChanged(String newDescription) =
      DescriptionChangedEvent;
  const factory EditorEvent.avatarChanged(String newAvatar) =
      AvatarChangedEvent;
}
