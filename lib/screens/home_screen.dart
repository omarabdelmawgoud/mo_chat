import 'package:flutter/material.dart';
import 'package:mo_chat/widgets/chats_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currntIndex,
          onTap: (value) {
            setState(() {
              currntIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        body: const ChatsList(),
      ),
    );
  }
}
