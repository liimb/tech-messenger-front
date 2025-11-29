import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_entry.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';

class ChatlistItem extends StatelessWidget {
  final ChatModel chatModel;
  const ChatlistItem({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
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
                leading: Icon(Icons.delete_rounded),
              ),
            ),
          ],
        );
      },
      child: ListTile(
        title: Text(chatModel.name),
        leading: UserAvatarWidget(
          userData: UserModel(nickname: 'nickname', name: 'name'),
          avatarSize: AvatarSize.small,
        ),
        subtitle: Text(chatModel.lastMessage ?? ''),
        contentPadding: EdgeInsets.symmetric(vertical: p8, horizontal: p32),
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
  }
}
