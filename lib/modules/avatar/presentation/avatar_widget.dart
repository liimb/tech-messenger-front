import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tech_messenger/core/common/base64_helper/base64_helper.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class UserAvatarWidget extends StatefulWidget {
  final UserModel userData;
  final AvatarSize avatarSize;

  const UserAvatarWidget({
    super.key,
    required this.userData,
    required this.avatarSize,
  });

  @override
  State<UserAvatarWidget> createState() => _UserAvatarWidgetState();
}

class _UserAvatarWidgetState extends State<UserAvatarWidget> {
  final base64Helper = Base64Helper();
  String? avatarPath;

  @override
  void initState() {
    super.initState();
    _loadAvatar();
  }

  @override
  void didUpdateWidget(covariant UserAvatarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.userData.avatar != widget.userData.avatar) {
      _loadAvatar();
    }
  }

  Future<void> _loadAvatar() async {
    final path = await base64Helper.getAvatar(widget.userData);
    if (!mounted) return;
    setState(() {
      avatarPath = path;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (avatarPath != null) {
      return CircleAvatar(
        backgroundImage: FileImage(File(avatarPath!)),
        radius: widget.avatarSize.size,
      );
    }

    return CircleAvatar(
      radius: widget.avatarSize.size,
      backgroundColor: context.appColors.onPrimaryContainer,
      foregroundColor: context.appColors.onPrimary,
      child: AppIcon(icon: Icons.person, width: widget.avatarSize.size),
    );
  }
}
