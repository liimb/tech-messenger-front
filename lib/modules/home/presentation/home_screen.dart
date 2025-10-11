import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist.dart';

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
        drawer: Drawer(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: p8,
                  color: context.appTheme.hoverColor,
                ),
              ),
              SliverAppBar(
                backgroundColor: context.appTheme.hoverColor,
                title: Text(
                  context.l10n.settings,
                  style: context.appTextTheme.heading1,
                ),
                titleSpacing: p32,
                automaticallyImplyLeading: false,
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: p32,
                  color: context.appTheme.hoverColor,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(p32),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          context.l10n.theme,
                          style: context.appTextTheme.heading1,
                        ),
                        leading: Icon(Icons.tonality),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text(
                          context.l10n.language,
                          style: context.appTextTheme.heading1,
                        ),
                        leading: Icon(Icons.book_outlined),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      Text('one', style: context.appTextTheme.heading1),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
                actions: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
              Chatlist(),
            ],
          ),
        ),
      ),
    );
  }
}
