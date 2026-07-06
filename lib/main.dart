import 'package:flutter/material.dart';
import 'package:mo_chat/constants.dart';
import 'package:mo_chat/screens/home_screen.dart';

void main() {
  runApp(const MoChat());
}

class MoChat extends StatelessWidget {
  const MoChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Constants.themecolor),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
