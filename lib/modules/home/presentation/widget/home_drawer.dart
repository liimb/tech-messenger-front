import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tech_messenger/modules/home/presentation/widget/languages_popup.dart';
import 'package:tech_messenger/modules/settings/bloc/settings_bloc.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/user/presentation/bloc/user_bloc.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserEvent.getCachedUser());
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                context.go(
                  AppRoutes.home.routePath + AppRoutes.editor.routePath,
                );
              },
              child: DecoratedBox(
                decoration: BoxDecoration(color: context.appTheme.hoverColor),
                child: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: p32,
                      vertical: p24,
                    ),
                    child: BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        final isLoading = state is UserLoadingState;

                        UserModel user = UserModel(nickname: '', name: '');

                        if (state is UserLoadedState) {
                          user = state.user;
                        }

                        final textBlock = Skeletonizer(
                          effect: ShimmerEffect(
                            baseColor: context.appColors.onPrimaryContainer,
                            highlightColor: context.appColors.onPrimary,
                          ),
                          enabled: isLoading,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 350),
                                child: Text(
                                  user.name.isNotEmpty
                                      ? user.name
                                      : 'MyLongName',
                                  style: context.appTextTheme.heading1,
                                ),
                              ),
                              SizedBox(height: p4),
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 350),
                                child: Text(
                                  user.nickname.isNotEmpty
                                      ? user.nickname
                                      : 'Username',
                                  style: context.appTextTheme.heading2,
                                ),
                              ),
                            ],
                          ),
                        );

                        return Row(
                          children: [
                            UserAvatarWidget(
                              userData: user,
                              avatarSize: AvatarSize.middle,
                            ),

                            SizedBox(width: p16),
                            Expanded(child: textBlock),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: p32),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    title: Text(
                      context.l10n.theme,
                      style: context.appTextTheme.heading2,
                    ),
                    onTap: () =>
                        context.read<SettingsBloc>().add(ToggleThemeEvent()),
                    leading: Icon(Icons.tonality),
                    contentPadding: EdgeInsets.symmetric(horizontal: p32),
                  ),
                  ListTile(
                    title: Text(
                      context.l10n.language,
                      style: context.appTextTheme.heading2,
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return LanguagesPopup();
                        },
                      );
                    },
                    leading: Icon(Icons.book_outlined),
                    contentPadding: EdgeInsets.symmetric(horizontal: p32),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      context.l10n.exit,
                      style: context.appTextTheme.heading2.copyWith(
                        color: context.appColors.errorColor,
                      ),
                    ),
                    onTap: () =>
                        context.read<AuthBloc>().add(AuthEvent.logout(false)),
                    leading: AppIcon(
                      icon: Icons.exit_to_app_outlined,
                      color: context.appColors.errorColor,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: p32),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
