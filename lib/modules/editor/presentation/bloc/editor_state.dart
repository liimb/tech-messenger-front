part of 'editor_bloc.dart';

@freezed
abstract class EditorState with _$EditorState {
  const factory EditorState.initial() = EditorInitialState;
  const factory EditorState.loading() = EditorLoadingState;
  const factory EditorState.success() = EditorSuccessState;
  const factory EditorState.error(String message) = EditorErrorState;
}
