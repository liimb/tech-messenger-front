import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/common/presentation/widget/frameless_input_widget.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist_item.dart';
import 'package:tech_messenger/modules/search/presentation/bloc/search_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().add(SearchEvent.reset());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      final query = _controller.text.trim();
      if (query.isNotEmpty) {
        context.read<SearchBloc>().add(SearchEvent.searchUsers(query));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: context.appTheme.primaryColor,
              surfaceTintColor: Colors.transparent,
              title: FramelessInputWidget(
                controller: _controller,
                focusNode: _focusNode,
                hintText: context.l10n.search,
                onSubmitted: (value) => context.read<SearchBloc>().add(
                  SearchEvent.searchUsers(value.replaceAll(' ', '')),
                ),
                onChanged: (v) => _onSearchChanged(),
              ),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const AppIcon(
                    icon: Icons.arrow_back,
                    //FIXME: заменить на цвет из appColors
                    color: Colors.white,
                  ),
                  onPressed: () {
                    if (_focusNode.hasFocus) {
                      _focusNode.unfocus();
                    } else {
                      context.pop();
                    }
                  },
                ),
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => SliverToBoxAdapter(),
                  loading: (_) => SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  failure: (_) => SliverToBoxAdapter(),
                  loaded: (loadedState) => SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final user = loadedState.users[index];
                      return ChatlistItem(nickname: user.name);
                    }, childCount: loadedState.users.length),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
