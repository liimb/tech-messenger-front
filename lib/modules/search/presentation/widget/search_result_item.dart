import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat_entry.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class SearchResultItem extends StatelessWidget {
  final UserModel userModel;
  const SearchResultItem({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        title: Text(userModel.name),
        leading: UserAvatarWidget(
          userData: UserModel(nickname: 'nickname', name: 'name'),
          avatarSize: AvatarSize.small,
        ),
        subtitle: Text(userModel.nickname),
        contentPadding: EdgeInsets.symmetric(vertical: p8, horizontal: p32),
        onTap: () {
          final entry = ChatEntry.withUser(user: userModel);
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
