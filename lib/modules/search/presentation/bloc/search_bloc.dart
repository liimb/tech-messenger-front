import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/modules/search/domain/model/search_response.dart';
import 'package:tech_messenger/modules/search/domain/repository/search_repository_interface.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository _searchRepository;

  SearchBloc({required ISearchRepository searchRepository})
    : _searchRepository = searchRepository,
      super(SearchInitialState()) {
    on<SearchUsersEvent>(_onSearchUsers);
    on<SearchResetEvent>(_onReset);
  }

  Future<void> _onReset(
    SearchResetEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchState.initial());
  }

  Future<void> _onSearchUsers(
    SearchUsersEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(SearchState.loading());
      final response = await _searchRepository.searchUsers(event.name);
      if (response.response.statusCode == 200) {
        emit(
          SearchState.loaded(
            SearchResponse.fromJson(response.response.data).users,
          ),
        );
      } else {
        AppLogger.error(
          'Ошибка поиска пользователей\n${response.response.data}',
        );
        emit(SearchState.failure());
      }
    } catch (e, st) {
      AppLogger.error('Ошибка поиска пользователей\n${e}\n${st}');
      emit(SearchState.failure());
    }
  }
}
