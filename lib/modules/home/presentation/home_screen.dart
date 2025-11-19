import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/presentation/bloc/chat_bloc.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist.dart';
import 'package:tech_messenger/modules/home/presentation/widget/home_drawer.dart';
import 'package:tech_messenger/modules/home/presentation/widget/scroll_physics.dart';

Future<void> _refreshData(BuildContext context) async {
  context.read<ChatBloc>().add(ChatEvent.refresh());
  await Future.delayed(const Duration(seconds: 1));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        drawer: HomeDrawer(),
        drawerEdgeDragWidth: MediaQuery.of(context).size.width / 1.3,
        body: RefreshIndicator(
          onRefresh: () => _refreshData(context),
          child: CustomScrollView(
            physics: SlowScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: context.appTheme.primaryColor,
                surfaceTintColor: Colors.transparent,
                title: Text(
                  context.l10n.allChats,
                  style: context.appTextTheme.heading1,
                ),
                leading: Builder(
                  builder: (context) => IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: context.appTheme.appBarTheme.titleTextStyle?.color,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              ),
              Chatlist(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: AppIcon(icon: Icons.people, width: 30),
          onPressed: () =>
              context.go(AppRoutes.home.routePath + AppRoutes.search.routePath),
        ),
      ),
    );
  }
}
