import 'package:flutter/material.dart';
import 'package:mo_chat/widgets/chats_list.dart';
import 'package:mo_chat/widgets/custom_search_box.dart';


class ChatsListScreen extends StatelessWidget {
  const ChatsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "MoroChat",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 35),
              const CustomSearchBox(),
              const SizedBox(height: 35),
              Expanded(child: ChatsList()),
            ],
          ),
        );
  }
}