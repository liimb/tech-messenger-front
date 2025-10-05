import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(height: p32, color: context.appTheme.hoverColor),
            ),
            SliverAppBar(
              backgroundColor: context.appTheme.hoverColor,
              title: Text(
                context.l10n.settings,
                style: context.appTextTheme.heading1,
              ),
              automaticallyImplyLeading: false,
            ),
            SliverToBoxAdapter(
              child: Container(height: p32, color: context.appTheme.hoverColor),
            ),
            SliverPadding(
              padding: EdgeInsets.all(p32),
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('one', style: context.appTextTheme.heading1),
                    Text('one', style: context.appTextTheme.heading1),
                    Text('one', style: context.appTextTheme.heading1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawerEdgeDragWidth: MediaQuery.of(context).size.width / 1.3,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appTheme.hoverColor,
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
        ],
      ),
    );
  }
}
