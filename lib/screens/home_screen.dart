import 'package:flutter/material.dart';
import 'package:mo_chat/screens/calls_screen.dart';
import 'package:mo_chat/screens/settings_screen.dart';
import 'package:mo_chat/widgets/chats_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
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
        body: Column(
          children: [
            const SizedBox(height: 16),
            Text(
              "MoroChat",
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 35),
            Expanded(
              child: Builder(
                builder: (_) {
                  switch (currentIndex) {
                    case 0:
                      return const ChatsListScreen();
                    case 1:
                      return const CallsScreen();
                    case 2:
                      return const SettingsScreen();
                    default:
                      return const ChatsListScreen();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
