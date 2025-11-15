part of 'avatar_bloc.dart';

@freezed
abstract class AvatarState with _$AvatarState {
  const factory AvatarState({required String? picture}) = _AvatarState;
}
