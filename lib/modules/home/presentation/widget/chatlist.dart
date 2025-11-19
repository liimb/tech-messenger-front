import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat_model.dart';
import 'package:tech_messenger/modules/chat/presentation/bloc/chat_bloc.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist_item.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return state.when(
          initial: () => SliverFillRemaining(),
          loading: () => SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          ),
          failure: (String message) => Text(message),
          loaded: (List<ChatModel> chats) {
            return SliverList.separated(
              itemCount: chats.length,
              separatorBuilder: (context, i) => const Divider(height: 0),
              itemBuilder: (context, i) {
                final chat = chats[i];
                return ChatlistItem(chatModel: chat);
              },
            );
          },
        );
      },
    );
  }
}
