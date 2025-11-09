part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitialState;
  const factory SearchState.loading() = SearchLoadingState;
  const factory SearchState.loaded(List<UserModel> users) = SearchLoadedState;
  const factory SearchState.failure() = SearchFailureState;
  const factory SearchState.emptyList() = SearchEmptyListState;
}
