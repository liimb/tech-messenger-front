import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_entry.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/model/interlocutor/chat_interlocutor_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';
import 'package:tech_messenger/modules/user/presentation/bloc/user_bloc.dart';

class ChatlistItem extends StatelessWidget {
  final ChatModel chatModel;
  const ChatlistItem({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        final myUser = userState.whenOrNull(loaded: (user) => user);

        if (myUser == null) {
          return const SizedBox.shrink();
        }

        final myNickname = (myUser.nickname).trim().toLowerCase();

        AppLogger.info(
          'ChatlistItem: myNickname="$myNickname" (original: "${myUser.nickname}"), interlocutors=${chatModel.interlocutors.map((i) => '"${i.nickname}"').toList()}',
        );

        // Фильтруем собеседников, исключая текущего пользователя
        // Сравниваем с учетом регистра и пробелов
        final otherInterlocutors = chatModel.interlocutors.where((i) {
          final interlocutorNickname = i.nickname.trim().toLowerCase();
          // Исключаем пустые никнеймы и текущего пользователя
          final isNotMe =
              interlocutorNickname.isNotEmpty &&
              myNickname.isNotEmpty &&
              interlocutorNickname != myNickname;
          if (!isNotMe) {
            AppLogger.warning(
              'ChatlistItem: excluding interlocutor "$interlocutorNickname" (matches myNickname="$myNickname")',
            );
          }
          return isNotMe;
        }).toList();

        AppLogger.info(
          'ChatlistItem: filtered ${otherInterlocutors.length} other interlocutors from ${chatModel.interlocutors.length} total',
        );

        // Если есть другие собеседники, берем первого
        // Если других нет, значит это может быть чат с самим собой или ошибка
        // В таком случае используем имя чата вместо собеседника
        ChatInterlocutorModel? interlocutor;
        if (otherInterlocutors.isNotEmpty) {
          interlocutor = otherInterlocutors.first;
          // Дополнительная проверка на всякий случай
          final selectedNickname = interlocutor.nickname.trim().toLowerCase();
          if (selectedNickname == myNickname && myNickname.isNotEmpty) {
            AppLogger.error(
              'ChatlistItem: Selected interlocutor matches current user! This should not happen. '
              'Selected: "$selectedNickname", myNickname: "$myNickname"',
            );
            interlocutor = null;
          } else {
            AppLogger.info(
              'ChatlistItem: Selected interlocutor: "${interlocutor.name}" (nickname: "${interlocutor.nickname}")',
            );
          }
        }

        // Если собеседник не найден, показываем имя чата или fallback
        if (interlocutor == null) {
          AppLogger.warning(
            'ChatlistItem: No valid interlocutor found, using chat name: "${chatModel.name}"',
          );
          return ListTile(
            title: Text(chatModel.name),
            subtitle: Text(chatModel.lastMessage ?? ''),
            contentPadding: const EdgeInsets.symmetric(
              vertical: p8,
              horizontal: p32,
            ),
            onTap: () {
              final entry = ChatEntry.existing(chat: chatModel);
              context.go(
                AppRoutes.home.routePath + AppRoutes.chat.routePath,
                extra: entry,
              );
            },
            tileColor: context.appTheme.hoverColor,
            splashColor: context.appTheme.highlightColor,
          );
        }

        return GestureDetector(
          onLongPress: () async {
            final RenderBox overlay =
                Overlay.of(context).context.findRenderObject() as RenderBox;

            final RenderBox itemBox = context.findRenderObject() as RenderBox;
            final Offset position = itemBox.localToGlobal(Offset.zero);

            await showMenu(
              context: context,
              position: RelativeRect.fromLTRB(
                overlay.size.width - position.dx + itemBox.size.width,
                position.dy,
                position.dx,
                overlay.size.height - position.dy - itemBox.size.height,
              ),
              items: [
                PopupMenuItem(
                  value: 'delete',
                  child: ListTile(
                    title: Text(context.l10n.delete),
                    leading: const Icon(Icons.delete_rounded),
                  ),
                ),
              ],
            );
          },
          child: ListTile(
            title: Text(interlocutor.name),
            leading: UserAvatarWidget(
              userData: UserModel(
                nickname: interlocutor.nickname,
                name: interlocutor.name,
                avatar: interlocutor.avatar,
              ),
              avatarSize: AvatarSize.small,
            ),
            subtitle: Text(
              chatModel.lastMessage ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: p8,
              horizontal: p32,
            ),
            onTap: () {
              final entry = ChatEntry.existing(chat: chatModel);
              context.go(
                AppRoutes.home.routePath + AppRoutes.chat.routePath,
                extra: entry,
              );
            },
            tileColor: context.appTheme.hoverColor,
            splashColor: context.appTheme.highlightColor,
          ),
        );
      },
    );
  }
}
