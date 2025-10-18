import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist.dart';
import 'package:tech_messenger/modules/home/presentation/widget/home_drawer.dart';

Future<void> _refreshData() async {
  await Future.delayed(const Duration(seconds: 2));
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
          onRefresh: _refreshData,
          child: CustomScrollView(
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
                    icon: const Icon(Icons.menu),
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
