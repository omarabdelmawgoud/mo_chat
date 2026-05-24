import 'package:flutter/material.dart';
import 'package:mo_chat/widgets/chat_card.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ChatCard();
      },
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: 20,
    );
  }
}
