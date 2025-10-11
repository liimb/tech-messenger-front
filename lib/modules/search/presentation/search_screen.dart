import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/common/presentation/widget/frameless_input_widget.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: context.appTheme.primaryColor,
              surfaceTintColor: Colors.transparent,
              title: FramelessInputWidget(
                controller: _controller,
                focusNode: _focusNode,
                hintText: context.l10n.search,
              ),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const AppIcon(icon: Icons.arrow_back),
                  onPressed: () {
                    if (_focusNode.hasFocus) {
                      _focusNode.unfocus();
                    } else {
                      context.pop();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
