import 'package:flutter/material.dart';
import 'package:tech_messenger/modules/home/presentation/widget/chatlist_item.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 20,
      separatorBuilder: (context, i) => const Divider(height: 0),
      itemBuilder: (context, i) => ChatlistItem(nickname: "John"),
    );
  }
}
