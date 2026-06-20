import 'package:flutter/material.dart';
import 'package:mo_chat/widgets/chat_card.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const ChatCard();
      },
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 20,
    );
  }
}
