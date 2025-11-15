import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/avatar/presentation/bloc/avatar_bloc.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class UserAvatarWidget extends StatelessWidget {
  final UserModel userData;
  final AvatarSize avatarSize;

  const UserAvatarWidget({
    super.key,
    required this.userData,
    required this.avatarSize,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AvatarBloc(userData: userData),
      child: BlocBuilder<AvatarBloc, AvatarState>(
        builder: (context, state) {
          if (state.picture != null) {
            return CircleAvatar(
              backgroundImage: FileImage(
                File(context.read<AvatarBloc>().state.picture!),
              ),
              radius: avatarSize.size,
            );
          }
          return CircleAvatar(
            radius: avatarSize.size,
            backgroundColor: context.appColors.onPrimaryContainer,
            foregroundColor: context.appColors.onPrimary,
            child: AppIcon(icon: Icons.person, width: avatarSize.size),
          );
        },
      ),
    );
  }
}
