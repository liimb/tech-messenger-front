import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class ChatlistItem extends StatelessWidget {
  final String nickname;

  const ChatlistItem({super.key, required this.nickname});

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
        title: Text(nickname),
        leading: CircleAvatar(child: Icon(Icons.person)),
        contentPadding: EdgeInsets.symmetric(vertical: p8, horizontal: p32),
        onTap: () {},
        tileColor: context.appTheme.hoverColor,
        splashColor: context.appTheme.highlightColor,
      ),
    );
  }
}
